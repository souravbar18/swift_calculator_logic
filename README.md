# Swift Logic Calculator

A console-based calculator application built with **Swift**. This project demonstrates advanced programming patterns such as **Enums with Raw Values**, **Tuples**, and **Safe Error Handling** using `guard` statements.

### 🚀 Key Features
- **Infinite Calculation Loop:** Keeps the app running for multiple operations until the user types `exit`.
- **Enum-Driven Operators:** Uses a dedicated `Operator` Enum to handle arithmetic symbols (+, -, *, /) safely.
- **Efficient Result Handling:** A single function returns all four basic arithmetic results using a **Tuple**, showcasing efficient data management.
- **Smart Validation:** - Prevents crashes using `guard let` for numeric inputs.
  - Includes a specific check for **Division by Zero** to ensure program stability.
- **User-Friendly Interface:** Clean console output with emoticons and clear dividers.

### 🛠️ Technical Implementation
- **Data Structures:** Used `Enum` for clean and readable operator selection.
- **Functionality:** Implemented a multi-return function:
  ```swift
  func calculation(num1: Double, num2: Double) -> (sum: Double, sub: Double, mul: Double, div: Double)
