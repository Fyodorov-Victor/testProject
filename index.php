<?php

setlocale(LC_ALL, '');
# Исходная строка, которую необходимо обработать.
$startString = "{Пожалуйста,|Просто|Если сможете,} сделайте так, чтобы это {удивительное|крутое|
простое|важное|бесполезное} тестовое предложение {изменялось {быстро|мгновенно|
оперативно|правильно} случайным образом|менялось каждый раз}.";


# Основная обработка
function generalProcess($str)
{
	# Функция, обрабатывающая строку ($str).


	#Уровень вложенности фигурных скобок (изначально 0).
	$bracesLevel = 0;
	# Проходим по строке
	# Максимальный уровень вложенности строки. Используется для определения наличия вложенных структур в строке.
	$maxBracesLevel = 0;

	# Посимвольно считывваем строку. рассчитываем уровни вложенности
	for ($i = 0, $j = strlen($str); $i < $j; $i++)
	{
		if ($str[$i] == "{")
		{
			if($bracesLevel != 0)
			{
				# строка, которую необходимо раскрыть.
				$sendString .= $str[$i];
			}
			$bracesLevel++;
			if ($bracesLevel > $maxBracesLevel)
			{
				$maxBracesLevel = $bracesLevel;
			}
		}
		elseif ($str[$i] == "}") {
			$bracesLevel--;
			if ($bracesLevel == 0)
			{
				foreach (generalProcess($sendString) as $diffVariants) 
				{
					foreach(explode("|", $diffVariants) as $finishDiffVariants)
					{
						# На выход генератороу подаются результаты с одной из раскрытых скобок первого уровня 
						# вложенности. Алгоритм повторяется рекурсивно в функции finishResult.
						yield $newString2 = $newString . $finishDiffVariants . substr($str, $i+1, strlen($str)-$i-1);
						#echo $diffVariants . "</br>";
						#echo substr($str, $i+1, strlen($str)-$i-1) . "</br>";
					}

				}

				break;

			}
			else
			{
				$sendString .= $str[$i];
			}
		}
		else
		{
			
			if ($bracesLevel == 0)
			{
				$newString .= $str[$i];
			}
			else
			{
				$sendString .= $str[$i];
				
			}
		}



	}
	if($maxBracesLevel == 0)
	{
		foreach (explode("|", $str) as $resultVariant) 
		{
			yield $resultVariant;
		}
	}
	
}

$finalArray = [];

function finishResult($generator)
{
	# Данная функция реализует построение массива со всеми возможными вариантами раскрытия исходной строки.
	# Реализуется рекурсивным способом. Использует функцию generallProcess.
	
	foreach (generalProcess($generator) as $str) 
	{


		$bracesLevel = 0;
		for ($i = 0, $j = strlen($str); $i < $j; $i++)
		{
			if ($str[$i] == "{")
			{
				$bracesLevel++;
			}
		}
		if ($bracesLevel>0)
			{
				finishResult($str);
			}
			else
			{
				global $finalArray;
				array_push($finalArray, $str);
			}

	}
	return True;

}

function finalArrayToDB($arr, $host, $dbUser, $pass,$dbName,$table)
{
	$mysqli = new mysqli($host,$dbUser,$pass,$dbName);
	$mysqli->set_charset("utf8");
	$dbResult = $mysqli->query("SELECT text FROM $table");

	$dbArray = [];

	while($row = $dbResult->fetch_assoc()) {

				 array_push($dbArray, $row["text"]);

		}

	foreach($arr as $resultString)
	{
		# Счетчи, проверяющий наличие данной строки в БД.
		$dbCounter = 0;
		foreach($dbArray as $dbString)
		{
			if ($resultString == $dbString)
				$dbCounter++;


		}
		echo $resultString . "</br>";
		if ($dbCounter==0)
		{
			# Если данное предложение из $arr не встретилось в БД, то добавляем его.
			$sql = sprintf("INSERT INTO %s (text) VALUES('%s')", $table, $resultString);
			echo $sql . "</br>";
			$newQuery = $mysqli->query($sql);
			# Вывести строку на экран.
			#echo $resultString . "</br>";
		}
	}




}


function showResult($str)
{
# Удаляет повторения в массиве результатов и выводит их на экран.
	finishResult($str);

	global $finalArray;
	
	$finalArray = array_unique($finalArray);

	finalArrayToDB($finalArray,"localhost", "root", "Vitya0903", "testProject", "testTable");


	echo "</br> Всего строк: " . count($finalArray);
}


showResult($startString);

?>