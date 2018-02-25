$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\calculator.ps1"

Describe -Tags "Demo" "Sum"{
	It "adds positive numbers" {
		Sum 2 3 | Should be 5
	}
}

Describe -Tags "Demo" "Sum"{
	It "adds a positive and a negative number" {
		Sum 2 -3 | Should be -1
	}
}

Describe -Tags "Demo" "Sum"{
	It "adds two negative number" {
		Sum -2 -3 | Should be -5
	}
}

Describe -Tags "Demo" "Sum"{
	It "adds two zero numbers" {
		Sum 0 0 | Should be 0
	}
}
