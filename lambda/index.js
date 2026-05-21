/**
 * AWS Lambda handler function.
 * Expects a POST request with a JSON body: { "name": "username" }
 * Responds with: { "message": "Hi username!" }
 */
exports.handler = async (event) => {
    let name = "stranger";

    // Try to parse the name from the request body
    try {
        // If the event comes from API Gateway, the body is a JSON string
        const body = event.body ? JSON.parse(event.body) : {};
        if (body.name) {
            name = body.name;
        }
    } catch (e) {
        // If parsing fails, keep the default name
    }

    // Return the greeting message as a JSON response
    return {
        statusCode: 200,
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ message: `Hi ${name}!` })
    };
};