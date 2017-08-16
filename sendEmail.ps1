$csv = Import-Csv "Path_To_Your_CSV_File.csv"
$smtp = "smtp.YOUR.SMTP"
$smtpfrom = "YOUR@EMAIL.com"

foreach ($row in $csv){
$smtp = "smtp.YOUR.SMTP"
$smtpfrom = "YOUR@EMAIL.com"
$Name = $row.Name
$smtpto = $row.Email

if($row.Request -eq '1'){
        $messagesubject = "Subject" + $Name + " 1st Email"
    }elseif ($row.Request -eq '2'){
        $messagesubject = "Subject – " + $Name + " 2nd Email"
    }elseif($row.Request -eq '3'){
        $messagesubject = "Subject – " + $Name + " 3rd Email"
    }else{
        $messagesubject = "Subject – " + $Name
}

$messagebody = "YOUR MESSAGE"

$smtp = New-Object Net.Mail.SmtpClient($smtp)

$smtp.Send($smtpfrom,$smtpto,$messagesubject,$messagebody)
}
