# Todo List App – HackPrep 6.0 | DJ Unicode

This is a simple and beginner-friendly **Todo List App** made using **Flutter**, demonstrated during the **HackPrep 6.0** event by **DJ Unicode**. It helps First Year students get familiar with the basic concepts of Flutter development including widgets, state management, UI design, and interactivity.

## Features

- Add todos dynamically
- Delete todos
- Mark tasks as completed
- Search bar UI 
- Clean Material 3-based UI
- BottomSheet input for task creation

---

## Learn to Implement UI from Figma

Understanding how to convert design files into real Flutter UIs is a must-have skill!

Start with this beginner-friendly Figma design and try building it in Flutter:

[Figma Design Link](https://www.figma.com/design/BAGpSIzN0E2PFd0RJXsWXc/UC-HackPrep-Flutter?node-id=0-1&t=6cPkhSRwkPSavwr7-1)

It’s a fun way to practice layout, styling, and alignment — just like in real projects.

---

## How to Run

1. **Clone the repository**  
   ```bash
   git clone <your-repo-url>
   cd <your-folder-name>
   ```

2. **Ensure Flutter is installed**  
   Check Flutter setup with:
   ```bash
   flutter doctor
   ```

3. **Run the app**  
   Connect an emulator or device, then run:
   ```bash
   flutter run
   ```

---

## Widgets and Concepts Used

| Widget / Concept       | Purpose                                                                 |
|------------------------|-------------------------------------------------------------------------|
| `MaterialApp`          | The root of the app. Sets theme and navigation.                         |
| `Scaffold`             | Basic screen layout with AppBar, Body, and BottomSheet.                 |
| `AppBar`               | Top navigation bar with title, icons, and profile avatar.              |
| `TextField`            | Used for both search and todo input.                                   |
| `ListView.builder`     | Dynamically renders todos based on list length.                        |
| `Checkbox`             | Toggles completion of a todo item.                                     |
| `InkWell`              | Tappable widget used for delete and add buttons.                       |
| `setState()`           | Rebuilds UI when data changes.                                          |
| `TextEditingController`| Manages user input text.                                               |
| `Expanded`, `Padding`, `Container`, `Row`, `Column` | Core layout components for styling.     |

---

## How It Works (Process Flow)

1. **User adds a todo**  
   - Typed via bottom sheet `TextField`.
   - Added to `todo_data` list with `isChecked: false`.

2. **Todo is displayed**  
   - Rendered dynamically in a scrollable list.

3. **User can mark as done**  
   - Toggling checkbox sets `isChecked: true` and applies line-through.

4. **User deletes a task**  
   - Clicking trash icon removes it from the list.

---

## Future Scope / Tasks to Try

Once you're familiar with this basic version, here are some next steps to enhance your app:

### 1. Use SharedPreferences
Store the todo list data locally on the device so it persists even after restarting the app.

- Plugin: `shared_preferences`
- Learn how to:
  - Convert list data to JSON
  - Save and retrieve from local storage

### 2. Integrate a Custom Backend API
Build and integrate your own REST API using:
- Node.js + Express / Firebase / Django
- Enable login, sync todos across devices
- Use `http` package in Flutter to:
  - GET/POST/DELETE todos
  - Connect your UI with remote database

### 3. Implement Search Functionality
Implement functionality to filter the displayed todos based on the entered text dynamically.

---

## Follow Us on LinkedIn

Stay connected for more workshops, projects, and open-source code!

- [DJUNICODE](https://www.linkedin.com/company/djunicode/)
- [Meet Chavan](https://www.linkedin.com/in/meet-chavan)
- [Rishi Shah](https://www.linkedin.com/in/rishi-shah-24879b244)
- [Vikas Kewat](https://www.linkedin.com/in/vikaskewat)
