import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :restapi_server, RestapiServerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "FHNr4rM3DvH4M6ME009Ofwa7XxObCgdV5Pc8hgSYCWkcIX+4UU72cPga9vRgSl0m",
  server: false

# In test we don't send emails.
config :restapi_server, RestapiServer.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
