##
# Setup global project settings for your apps. These settings are inherited by every subapp. You can
# override these settings in the subapps as needed.
#
Padrino.configure_apps do
  # enable :sessions
  set :session_secret, 'b8c1c046075b1f5c3de0e050b0deaf0f597d0ea1334277e0d1a47b97c0096443'
end

# Mounts the core application for this project
Padrino.mount("SpinePadrino").to('/')
