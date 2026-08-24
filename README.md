# LearnHub

## Project Vision

LearnHub is a mobile learning and training platform designed to help learners access structured training programs, enroll in courses, track progress, and improve their skills through a simple mobile experience.

## Objectives

- Provide easy access to learning programs.
- Allow learners to browse and enroll in training courses.
- Help learners monitor their learning progress.
- Provide a platform for managing training activities.
- Create a simple and user-friendly learning experience.

## Target Users

### Learners
Users who want to discover programs, enroll in courses, complete learning activities, and track their progress.

### Admins
Training coordinators or instructors who manage programs, learners, and training content.

## Core Features

### Learner Features
- User login
- Learner dashboard
- Browse programs
- Search programs
- View program details
- Enroll in programs
- Track progress
- View profile

### Admin Features
- Manage training programs
- Manage learners
- Monitor progress
- Share training updates

## Navigation Flow

Login  
↓  
Learner Dashboard  
↓  
Program Listing  
↓  
Program Details  
↓  
Enroll

Additional sections:
- My Progress
- Profile

## Tech Stack

- Flutter
- Dart
- Material Design 3

## Project Structure

- `lib/` - Flutter application source code
- `android/` - Android project files
- `web/` - Web project files
- `test/` - Testing files
- `pubspec.yaml` - Flutter configuration file

## Development Roadmap

### Week 1
- Project setup
- Wireframes
- Navigation
- Flutter prototype
- GitHub setup

### Future Development
- User authentication
- Database integration
- Quizzes
- Certificates
- Notifications
- Analytics

## Conclusion

LearnHub aims to provide a simple and effective mobile learning platform that connects learners with useful training opportunities.

## Week 2 Functional UI Prototype

LearnHub was upgraded during Week 2 into a functional interactive UI prototype.

### Functional Screens

- Login Screen
- Home Dashboard
- Program Listing Screen
- Program Details Screen
- My Progress Screen
- Learner Profile Screen

### Navigation Flow

Login → Home → Programs → Program Details

The application also provides bottom navigation between:

- Home
- Programs
- Progress
- Profile

### Week 2 Improvements

- Functional navigation between screens
- Consistent LearnHub branding
- Program listing and program details
- Interactive login flow
- Learner progress tracking
- Learner profile section

### Demo

A 2–3 minute screen recording demonstrates navigation between the four required Week 2 screens.
# LearnHub 📚

## Week 3 Development Update

During Week 3, LearnHub was updated from a primarily static application into a more functional and intarning progress, register for programs, and submit feedback.

## Week 3 Development Update

During Week 3, LearnHub was updated from a primarily static application into a more functional and interactive Flutter application.

### What I Implemented

#### 1. Program Data

Program information is loaded from JSON data instead of being individually hardcoded into the UI.

The program data includes:

- Program title
- Category
- Instructor
- Duration
- Difficulty level
- Description
- Progress percentage

The application currently contains programs such as:

- Flutter Development
- UI/UX Design
- Web Development
- Data Analysis

#### 2. Program Listing

The Programs screen displays the available learning programs dynamically.

Each program card displays:

- Program title
- Description
- Category
- Duration
- Level
- Current progress
- View Details option

#### 3. Program Details

Users can select a program to view more information.

The Program Details screen displays:

- Program title
- Category
- Program description
- Instructor
- Duration
- Level
- Current progress
- Registration option

#### 4. Registration Form

A registration form was added to allow users to register for a program.

The form collects:

- Full name
- Email address
- Phone number

Form validation was also implemented to ensure required fields are completed before submission.

#### 5. Feedback Form

A feedback screen was added so users can submit feedback about the application.

The form includes validation and provides feedback to the user after submission.

#### 6. Loading and Error Handling

Loading states were implemented while program data is being retrieved.

Error handling was also added so that users receive an appropriate message if program data cannot be loaded, together with an option to retry.

#### 7. Progress Screen

A Progress screen was implemented to display the learner's overall progress and individual program progress.

Progress is displayed visually using progress indicators.

#### 8. Profile Screen

A Profile screen was added to provide a simple learner profile interface.

It includes options such as:

- Personal Information
- Notifications
- Send Feedback

## Technologies Used

- Flutter
- Dart
- Material Design
- JSON
- Flutter Form Validation

## Key Learning Outcomes

During Week 3, I learned how to:

- Work with JSON data in Flutter.
- Convert JSON data into Dart models.
- Build forms and validate user input.
- Handle loading states.
- Implement error handling.
- Navigate between multiple screens.
- Display dynamic data in Flutter widgets.
- Create interactive user experiences.
- Document development work using GitHub.

## Current Application Features

- Program listing
- Program details
- Program progress tracking
- Registration form
- Feedback form
- Form validation
- Loading state
- Error handling
- Profile screen
- Bottom navigation

## Week 3 Status

The application is functional and successfully runs in Flutter.

The Week 3 implementation focuses on transforming LearnHub from static screens into an interactive application with dynamic program data, forms, validation, navigation, and user feedback.
