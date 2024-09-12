package partyrobot

import (
	"fmt"
	"strings"
)

func Welcome(name string) string {
	return fmt.Sprintf("Welcome to my party, %s!", name)
}

func HappyBirthday(name string, age int) string {
	return fmt.Sprintf("Happy birthday %s! You are now %d years old!", name, age)
}

func AssignTable(name string, table int, neighbor, direction string, distance float64) string {
	var sb strings.Builder

	sb.WriteString(Welcome(name) + "\n")
	sb.WriteString(directToTable(table, direction, distance) + "\n")
	sb.WriteString(stateNeighbour(neighbor))

	return sb.String()
}

func directToTable(table int, direction string, distance float64) string {
	var sb strings.Builder

	sb.WriteString(fmt.Sprintf("You have been assigned to table %03d.", table) + " ")
	sb.WriteString(fmt.Sprintf("Your table is %s,", direction) + " ")
	sb.WriteString(fmt.Sprintf("exactly %.1f meters from here.", distance))

	return sb.String()
}

func stateNeighbour(neighbor string) string {
	return fmt.Sprintf("You will be sitting next to %s.", neighbor)
}
