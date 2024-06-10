package cars

func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return (float64(productionRate) * successRate) / 100.0
}

func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(CalculateWorkingCarsPerHour(productionRate, successRate)) / 60
}

func CalculateCost(carsCount int) uint {
	const costOfOneCar = 10000
	const costOfTenCars = 95000
	var totalCostOfCarsWithFullPrice = uint(carsCount%10) * costOfOneCar
	var totalCostOfCarsWithDecreasedPrice = uint(carsCount/10) * costOfTenCars
	return totalCostOfCarsWithDecreasedPrice + totalCostOfCarsWithFullPrice
}
