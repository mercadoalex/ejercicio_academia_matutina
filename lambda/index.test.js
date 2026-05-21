const { handler } = require('./index');

test('responds with Hi <name>!', async () => {
  const event = { body: JSON.stringify({ name: 'Alex' }) };
  const result = await handler(event);
  const body = JSON.parse(result.body);
  expect(body.message).toBe('Hi Alex!');
});

test('responds with Hi stranger! if no name', async () => {
  const event = { body: '{}' };
  const result = await handler(event);
  const body = JSON.parse(result.body);
  expect(body.message).toBe('Hi stranger!');
});