package purchase

import (
	"fmt"
)

func NeedsLicense(kind string) bool {
	if kind == "car" || kind == "truck" {
		return true
	}
	return false
}

// ChooseVehicle recommends a vehicle for selection. It always recommends the vehicle that comes first in lexicographical order.
func ChooseVehicle(option1, option2 string) string {
	betterOption := option1
	if option1 > option2 {
		betterOption = option2
	}
	return fmt.Sprintf("%s is clearly the better choice.", betterOption)
}

// CalculateResellPrice calculates how much a vehicle can resell for at a certain age.
func CalculateResellPrice(originalPrice, age float64) float64 {
	var percent float64 = 50
	if age < 3 {
		percent = 80
	} else if age < 10 {
		percent = 70
	}
	return calculatePercentage(originalPrice, percent)
}

func calculatePercentage(price, percent float64) float64 {
	return price * percent / 100
}
