#include "../include/progress_bar.h"
#include <chrono>
#include <iostream>
#include <string>
#include <thread>

void process_info(int process_time) {
  std::this_thread::sleep_for(std::chrono::milliseconds(process_time));
}
void print_progress_bar(double progress) {
  int bar_length = 50;
  int filled_length = static_cast<int>(progress * bar_length);
  std::string barChar = "#";
  std::cout << "[";

  for (int i = 0; i < filled_length; i++) {
    std::cout << barChar;
  }
  for (int i = filled_length; i < bar_length; i++) {
    std::cout << " ";
  }
  std::cout << "] " << static_cast<int>(progress * 100) << "%\r";
  std::cout.flush();
}
