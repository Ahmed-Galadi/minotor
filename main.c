#include "monitor.h"

int main() {
	double CPU_usage = cpuCalc();
	double CPU_temperature = tempCalc();
	double *RAM_usage = ramCalc();
	double *DISK_usage = storageCalc();

	printf("CPU ⚛: %.1f%%|Temp 🌡: %.1f°C |RAM 🗂: %.1f/%.1f(GB)(%.1f%%) |DISK ⛃ : %.1f/%.1f(GB)(%.1f%%)", CPU_usage, CPU_temperature, RAM_usage[0], RAM_usage[1], RAM_usage[2], DISK_usage[0], DISK_usage[1], DISK_usage[2]);

	free(RAM_usage);
	free(DISK_usage);
	return (0);
}
