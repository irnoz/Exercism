// Package weather provides tools to
// check weather forecast at a given city.
package weather

// CurrentCondition describes
// current weather condition.
var CurrentCondition string

// CurrentLocation describes the
// current city we want the forecast for.
var CurrentLocation string

// Forecast returns the string describing
// current weather conditions in specified city.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
