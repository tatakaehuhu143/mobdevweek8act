// Combine the pieces: Function containing conditional, loop, and error handling
double calculateGradeStatus(String studentName, String scoreInput) {
  try {
    //  Test with bad input handling inside try/catch
    double score = double.parse(scoreInput);

    // Write a conditional (if/else)
    if (score < 0 || score > 100) {
      print('Error: Score must be between 0 and 100 for $studentName.');
      return 0.0;
    } else if (score >= 75) {
      print('Status: Passed! Great job, $studentName.');
    } else {
      print('Status: Needs Improvement. Keep practicing, $studentName.');
    }

    //  Write a loop (for loop repeating a task a fixed number of times)
    print('Generating progress checklist for $studentName:');
    for (int i = 1; i <= 3; i++) {
      print(' - Review Session $i completed.');
    }

    return score;
  } catch (e) {
    //  Add error handling (try/catch block)
    print('Exception Caught: Invalid input format ("$scoreInput") is not a valid number.');
    return -1.0;
  }
}

void main() {
  print('--- Test Case 1: Valid Passing Grade ---');
  calculateGradeStatus('Alice' , '85.5');

  print('\n--- Test Case 2: Valid Failing Grade ---');
  calculateGradeStatus('Bob', '60');

  print('\n--- Test Case 3: Bad/Invalid Input (Triggers try/catch) ---');
  //  Deliberately feeding bad input to confirm the try/catch handles it instead of crashing
  calculateGradeStatus('Charlie', 'abc_not_a_number');
}
