Param($srcDir,$dstDir, $logSavePath) 
#$CopyStartTime = Get-Date -Format "yyyy-MMdd-HHmmss"
#$LogFileName = "Log_$CopyStartTime.log"

#一回目の処理
$srcDir = "C:\Users\aksh0\OneDrive\デスクトップ\temp"
$dstDir = "C:\Users\aksh0\OneDrive\デスクトップ\temp2"
$strTimeSpan = "first process : :"
$TimeSpan = Measure-Command{
    
    robocopy $srcDir $dstDir /MIR /R:3 /W:60 /LOG:$logaSavePath$LogFileName /NP /TEE /XJD /XJF /DCOPY:DAT /NDL
}

Write-Host($strTimeSpan + $TimeSpan)
 

#2回目の処理
$srcDir = "C:\Users\aksh0\OneDrive\デスクトップ\temp2"
$dstDir = "C:\Users\aksh0\OneDrive\デスクトップ\temp3"
$strTimeSpan = "second: :"
$TimeSpan = Measure-Command{
    
    robocopy $srcDir $dstDir /MIR /R:3 /W:60 /LOG:$logaSavePath$LogFileName /NP /TEE /XJD /XJF /DCOPY:DAT /NDL
}

Write-Host($strTimeSpan + $TimeSpan)
 