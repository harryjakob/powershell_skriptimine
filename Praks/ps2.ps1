$Hashtable1=@{
Name="John", "Joe", "Mary";
DaysWorked=12, 20, 18
}
$Hashtable2=@{
Name="John", "Joe", "Mary";
SalaryPerDay=100, 120, 150
}

$johnSalary = $Hashtable1.DaysWorked[0] * $Hashtable2.SalaryPerDay[0]
$joeSalary = $Hashtable1.DaysWorked[1] * $Hashtable2.SalaryPerDay[1]
$marySalary = $Hashtable1.DaysWorked[2] * $Hashtable2.SalaryPerDay[2]

$Hashtable3 = @{
Name=$Hashtable1.Name[0],$Hashtable1.Name[1], $Hashtable1.Name[2];
Salary=$johnSalary, $joeSalary, $marySalary
}

$Hashtable1
Write-Host
$Hashtable2
Write-Host
$Hashtable3