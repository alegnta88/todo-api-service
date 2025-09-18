# Todo API Service

This is a simple unauthenticated API service for managing a todo list. It allows users to create, read, update, and delete todo items. The service is built using Node.js, Express, and MongoDB with Mongoose.

## Project Structure

```
todo-api-service
├── src
│   ├── app.js                # Entry point of the application
│   ├── models
│   │   └── todo.js           # Mongoose model for todo items
│   ├── routes
│   │   └── todos.js          # Routes for the todo API
│   ├── controllers
│   │   └── todosController.js # Controller for handling todo logic
│   └── config
│       └── db.js             # Database connection configuration
├── package.json               # NPM configuration file
├── .env                       # Environment variables
├── .gitignore                 # Files to ignore by Git
└── README.md                  # Project documentation
```

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd todo-api-service
   ```

2. **Install dependencies:**
   ```
   npm install
   ```

3. **Set up environment variables:**
   Create a `.env` file in the root directory and add your MongoDB connection string:
   ```
   MONGODB_URI=<your-mongodb-connection-string>
   ```

4. **Run the application:**
   Use nodemon for automatic server restarts during development:
   ```
   npm run dev
   ```

## API Endpoints

- `GET /todos` - Retrieve all todos
- `POST /todos` - Create a new todo
- `GET /todos/:id` - Retrieve a single todo by ID
- `PUT /todos/:id` - Update a todo by ID
- `DELETE /todos/:id` - Delete a todo by ID

## License

This project is licensed under the MIT License.