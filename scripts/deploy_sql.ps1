$serverName = "$(sqlServerName).database.windows.net"
$databaseName = "$(sqlDatabaseName)"
$user = "$(sqlAdminUsername)"
$password = "$(sqlAdminPassword)"
$sqlFile = "sql/populate_tables.sql"

Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $password -InputFile $sqlFile