Project: LearnHub Mobile App
Week: 3 – From Static UI to Dynamic Functionality1. Data IntegrationImplemented a mock JSON data source using MockProgramService.
Programs are now loaded asynchronously using Future and FutureBuilder.
Program Listing and Program Details screens display dynamic content (title, category, instructor, duration, level, description, and progress) instead of static placeholders.
Added a simulated network delay to demonstrate real-world loading behavior.

2. Form FunctionalityCreated a fully functional Registration Form with the following fields:Full Name
Email Address
Phone Number

Added proper validation for all fields.
Implemented a Feedback Form with validation.
Both forms show clear error messages when required fields are empty.
Successful form submission displays a confirmation message (SnackBar).

3. State Management & Error HandlingUsed setState together with FutureBuilder for managing asynchronous data.
Added loading indicator while fetching program data.
Implemented error handling with a user-friendly error view and “Try Again” retry button.
Added pull-to-refresh functionality on the Programs screen.

4. Additional ImprovementsBuilt responsive and clean UI using Material 3 design.
Added bottom navigation (Programs, Progress, Profile).
Program Details screen includes a “Register for Program” button that opens the registration form.

Outcome:
The application now combines dynamic data, user interaction through forms, loading states, and error handling to deliver a realistic mobile experience.


