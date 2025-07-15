<!-- Use this file to provide workspace-specific custom instructions to Copilot. For more details, visit https://code.visualstudio.com/docs/copilot/copilot-customization#_use-a-githubcopilotinstructionsmd-file -->

# MERN Stack Application - Copilot Instructions

This is a MERN (MongoDB, Express.js, React, Node.js) stack application ready for deployment on Microsoft Azure.

## Project Structure
- `/` - Root directory with Express.js server and backend logic
- `/client` - React.js frontend application
- `/models` - MongoDB/Mongoose data models
- `/routes` - Express.js API route handlers
- `/middleware` - Custom middleware (authentication, etc.)

## Development Guidelines
- Use modern JavaScript ES6+ features
- Follow React hooks patterns for frontend development
- Use JWT for authentication
- Implement proper error handling and validation
- Follow RESTful API conventions
- Use environment variables for configuration
- Write clean, maintainable code with proper commenting

## Key Technologies
- Backend: Node.js, Express.js, MongoDB, Mongoose, JWT, bcrypt
- Frontend: React.js, Axios, Context API, Modern CSS
- Deployment: Microsoft Azure App Service, MongoDB Atlas

## Authentication Flow
- Users register/login with email and password
- Passwords are hashed using bcrypt
- JWT tokens are used for session management
- Protected routes require valid JWT token

## When making changes:
- Test both frontend and backend functionality
- Ensure proper error handling
- Maintain responsive design principles
- Follow the existing code patterns and structure
- Update documentation when adding new features
