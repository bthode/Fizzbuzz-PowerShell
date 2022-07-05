[CmdletBinding()]
param (
)

Function fizzbuzz([int32]$arg1) {
$arg1 | YOUR_CODE_HERE
} 

# Install-Module -Name Pester -Force -SkipPublisherCheck -MinimumVersion "4.0.0"
Describe 'Tests' {
  It 'Fizz' {
    $inputs = @(3,6,9,18)
    foreach ($input in $inputs) {
    fizzbuzz $input | Should -Be "Fizz"
    }

  }
  It 'Buzz' {
    $inputs = @(5, 10, 50)
    foreach ($input in $inputs) {
    fizzbuzz $input | Should -Be "Buzz"
    }
  }
  It 'FizzBuzz' {
    $inputs = @(15, 30, 75)
    foreach ($input in $inputs) {
    fizzbuzz $input | Should -Be "FizzBuzz"
    }
  }
  It 'No Op' {
    $inputs = @(2,4,88)
    foreach ($input in $inputs) {
    fizzbuzz $input | Should -Be $input
    }
  }
}
