# Pets Manager App

## Overview:

Pets Manager is a simple Ruby on Rails application that allows users to manage pet records. Users can create, view, edit, and delete pets. Each pet record contains a name, age, and description. The application uses **ActiveRecord** to interact with the SQLite database, providing a seamless way to handle the database operations.

## Key Features:

- View a list of all pets
- Create a new pet
- View pet details
- Edit existing pets
- Delete pets
- Form validation and error handling

## Technology Used:

- **Ruby on Rails**: A powerful web application framework.
- **SQLite3**: A lightweight relational database management system.
- **ActiveRecord**: Rails' Object-Relational Mapping (ORM) system that simplifies database interactions, making it easy to create, read, update, and delete records.

  ActiveRecord automatically creates the necessary SQL queries based on Ruby object methods, such as saving or retrieving `Pet` records, ensuring that database operations are simple and intuitive.

## Installation Instructions:

1. Clone the repository to your local machine:
   ```
   $ git clone https://github.com/Yma-Van2020/ruby_on_rails_pet_store.git
   $ cd pets-app
   ```

3. Install required dependencies:
   ```
   $ bundle install
   ```

5. Set up the database:
   ```
   $ rails db:create
   $ rails db:migrate
   ```

7. Start the development server:
   ```
   $ rails server
   ```

9. Open your browser and navigate to:
   ```
   http://localhost:3000/pets
   ```

## Configuration:
- The development, test, and production databases are configured in the `config/database.yml` file.

## ActiveRecord Integration:

This application uses **ActiveRecord** to manage pet records. It automatically handles interactions with the SQLite database through simple Ruby methods and validations.

- **Create**: Use `@pet.save` to create new pet records.
- **Read**: Use `Pet.all` to retrieve all pets or `Pet.find(id)` to retrieve a specific pet by its ID.
- **Update**: Use `@pet.update(attributes)` to update existing pet records.
- **Delete**: Use `@pet.destroy` to delete a pet from the database.

ActiveRecord takes care of generating the necessary SQL commands behind the scenes.

## Usage:

1. To create a new pet:
   Navigate to the "New Pet" page and fill out the form with the pet's name, age, and description.
   Submit the form to save the pet.

2. To edit a pet:
   Navigate to the pet's profile page and click the "Edit" button. Modify the pet's details and submit the form to save the changes.

3. To delete a pet:
   Navigate to the pet's profile page and click the "Remove" button. Confirm the deletion.

4. **To view pet details**:
   Navigate to the pet's profile page to view its name, age, and description

   
