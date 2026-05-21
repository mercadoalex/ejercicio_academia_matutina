// Variable to hold the API URL loaded from config.json
let API_GATEWAY_URL = "";

/**
 * Loads the API URL from config.json.
 * This allows you to switch between AWS, GCP, or any backend
 * by just updating the config file, not the code.
 */
fetch('config.json')
  .then(response => response.json())
  .then(config => {
    API_GATEWAY_URL = config.apiUrl;
  })
  .catch(error => {
    console.error("Could not load config.json:", error);
    document.getElementById('result').innerText = 'Error: Could not load configuration.';
  });

/**
 * Sends the user's name to the backend API and displays the greeting.
 * Called when the user clicks the "Say Hi" button.
 */
async function sayHi() {
  const name = document.getElementById('nameInput').value;

  if (!API_GATEWAY_URL) {
    document.getElementById('result').innerText = 'API URL not loaded yet. Please try again.';
    return;
  }

  try {
    // Send a POST request to the API endpoint with the name as JSON
    const response = await fetch(API_GATEWAY_URL, {
      method: 'POST',
      body: JSON.stringify({ name }),
      headers: { 'Content-Type': 'application/json' }
    });

    // Parse the JSON response
    const data = await response.json();

    // Display the greeting message in the result div
    document.getElementById('result').innerText = data.message;
  } catch (error) {
    // Display an error message if the request fails
    document.getElementById('result').innerText = 'Error: Could not reach the backend.';
    console.error('Error:', error);
  }
}