// Require the framework and instantiate it
const fastify = require('fastify')({ logger: true })

// Declare a route
fastify.get('/', async (request, reply) => {
  return { hello: 'world' }
})

fastify.get('/bli', async (request, reply) => {
  return { msg: 'blibli' }
})

fastify.get('/ble', async (request, reply) => {
  return { msg: 'bleble' }
})

// Run the server!
const start = async () => {
  try {
    await fastify.listen(3000, "0.0.0.0")
  } catch (err) {
    fastify.log.error(err)
    process.exit(1)
  }
}
start()
