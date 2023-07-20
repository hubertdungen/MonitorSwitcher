# Initialize log file path
$logFilePath = "C:\Users\huber\OneDrive\Documents\SwapMonitorsLog.txt"

# Check if log file exists
if(!(Test-Path -Path $logFilePath)) {
    # If not, create it and initialize with monitor 1
    Set-Content -Path $logFilePath -Value "1"
}

# Read the last monitor number from the log file
$lastMonitorNumber = Get-Content -Path $logFilePath

# Detect the total number of monitors
$monitorCount = (Get-WmiObject -Namespace root\wmi -Class WmiMonitorBasicDisplayParams).Count

# Calculate the next monitor number
$nextMonitorNumber = ($lastMonitorNumber % $monitorCount) + 1

# Swap to the next monitor using nircmd
nircmd setprimarydisplay $nextMonitorNumber

# Log the next monitor number
Set-Content -Path $logFilePath -Value $nextMonitorNumber