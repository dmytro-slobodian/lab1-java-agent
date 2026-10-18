param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$MavenArgs
)

if (-not $MavenArgs) {
    $MavenArgs = @("verify")
}

if (-not (Get-Command mvn -ErrorAction SilentlyContinue)) {
    throw "Maven is not available on PATH. Install Maven 3.9.9 or newer and retry."
}

Push-Location $PSScriptRoot
try {
    & mvn @MavenArgs
    exit $LASTEXITCODE
}
finally {
    Pop-Location
}