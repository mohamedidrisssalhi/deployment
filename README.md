# MERN PROJECT

A complete MERN (MongoDB, Express.js, React, Node.js) stack application for task management with user authentication.

## Features

- **User Authentication**: Secure registration and login system with JWT
- **Task Management**: Create, update, complete, and delete tasks
- **Responsive Design**: Modern UI that works on all devices
- **MongoDB Integration**: Data persistence with MongoDB Atlas
- **RESTful API**: Clean API endpoints for all operations

## Technology Stack

- **Frontend**: React.js with Context API for state management
- **Backend**: Node.js with Express.js
- **Database**: MongoDB (configured for MongoDB Atlas)

## Local Development

### Prerequisites
- Node.js (v14 or higher)
- npm (v6 or higher)
- MongoDB Atlas account

### Installation

**Install dependencies:**
   ```bash
   npm install
   cd client && npm install && cd ..
   ```

## Production Build

Build the React frontend for production:
```bash
npm run build
```

This creates a `client/build` folder with optimized production files.

## API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/me` - Get current user

### Tasks
- `GET /api/tasks` - Get user's tasks
- `POST /api/tasks` - Create new task
- `PUT /api/tasks/:id` - Update task
- `DELETE /api/tasks/:id` - Delete task

## Deployment on Render.com

This application is optimized for deployment on Render couldn't host on azure cuz im broke.

## Project Structure

```
├── server.js 
├── package.json 
├── .env                   # hidden for security purposes
├── models/
│   ├── User.js
│   └── Task.js
├── routes/ 
│   ├── auth.js
│   ├── users.js
│   └── tasks.js
├── middleware/
│   └── auth.js
└── client/                # React frontend
    ├── public/
    ├── src/
    │   ├── components/
    │   ├── context/
    │   ├── App.js
    │   └── index.js
    └── package.json
```