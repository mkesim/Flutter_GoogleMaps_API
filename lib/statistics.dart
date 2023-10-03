// statistics.dart
import 'package:flutter/material.dart';

class Statistics {
  // Total distance traveled
  double totalDistance = 0;

  // Add distance to the total distance traveled
  void addDistance(double distance) {
    totalDistance += distance;
  }

  // Get the total distance traveled
  double getTotalDistance() {
    return totalDistance;
  }
}
