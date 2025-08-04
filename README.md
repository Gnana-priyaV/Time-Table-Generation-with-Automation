
# 📅 Time Table Generation System

An automated time table generation system built to simplify and optimize the scheduling of classes, teachers, and classrooms.

---

## 📌 Features

- Automatically generates conflict-free timetables
- Teacher and classroom availability checks
- User-friendly interface
- Admin panel for management
- Supports multiple departments and semesters

---

## 🛠️ Technologies Used

| Frontend       | Backend        | Database     | Others         |
|----------------|----------------|--------------|----------------|
| HTML, CSS, JS  | Java (J2EE) / JavaScript (based on your version) | MySQL  |

---

## 🧑‍💻 How to Run the Project

### Option 1: Java Version (Swing + J2EE)

```bash
git clone https://github.com/yourusername/time-table-generator.git
cd time-table-generator
```

1. Open the project in **NetBeans / Eclipse**
2. Set up MySQL:
   - Create a database
   - Import the SQL dump (if provided)
   - Update DB credentials in `DBConnection.java`
3. Run the project

### Option 2: Web Version (HTML + JS + MongoDB)

1. Clone the repo and open `index.html` in browser
2. Start your backend server (Node.js or Python Flask)
3. Connect MongoDB locally or via Atlas
4. Update `.env` / config files if needed
