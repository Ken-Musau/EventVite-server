# Event-VitE Backend

Event-VitE Backend is the server-side component of the Event-VitE Admin Dashboard web application. It provides the necessary API endpoints to handle event and host data using a PostgreSQL database.

## Technologies Used

- Ruby: A programming language used for the backend logic.
- Sinatra: A lightweight web application library for Ruby used to create the API endpoints.
- ActiveRecord: An Object-Relational Mapping (ORM) library for Ruby used to interact with the PostgreSQL database.

## Installation

1. Clone the repository to your local machine.
2. Navigate to the project directory and install dependencies by running:

```
bundle install
```

3. Create a PostgreSQL database for the application.
4. Update the database configuration in the `config/database.yml` file with your PostgreSQL credentials.

## API Endpoints

### `GET /hosts`

- Description: Retrieves a list of all hosts.
- Response: Returns a JSON array containing host objects.

### `GET /events`

- Description: Retrieves a list of all events.
- Response: Returns a JSON array containing event objects.

### `GET /events/:id`

- Description: Retrieves a list of events associated with a specific host.
- Parameters:
  - `:id` (integer) - The ID of the host.
- Response: Returns a JSON array containing event objects.

### `POST /hosts`

- Description: Creates a new host.
- Parameters (in JSON format):
  - `name` (string) - The name of the host.
  - `email` (string) - The email of the host.
  - `password` (string) - The password of the host.
- Response: Returns a JSON object containing the created host.

### `POST /events`

- Description: Creates a new event.
- Parameters (in JSON format):
  - `title` (string) - The title of the event.
  - `description` (string) - The description of the event.
  - `image_url` (string) - The URL of the event image.
  - `date` (string) - The date of the event.
  - `time` (string) - The time of the event.
  - `venue` (string) - The venue of the event.
  - `price` (string) - The price of the event.
  - `host_id` (integer) - The ID of the host associated with the event.
- Response: Returns a JSON object containing the created event.

### `PATCH /events/:id`

- Description: Updates an existing event.
- Parameters (in JSON format):
  - `title` (string) - The updated title of the event.
  - `description` (string) - The updated description of the event.
  - `date` (string) - The updated date of the event.
  - `time` (string) - The updated time of the event.
  - `venue` (string) - The updated venue of the event.
- Response: Returns a JSON object containing the updated event.

### `DELETE /events/:id`

- Description: Deletes an existing event.
- Parameters:
  - `:id` (integer) - The ID of the event to be deleted.
- Response: Returns a JSON object containing the deleted event.

## Contributors

- [Kennedy Musau](https://github.com/Ken-Musau)

## License

This project is licensed under the [Kennedy Musau](https://github.com/Ken-Musau).
