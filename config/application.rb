require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Attaboy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.generators do |g|
      g.assets false
      g.helper false
      g.jbuilder false
      g.test_framework :rspec,
                       # テストデータベースにレコードを作成するファイルの作成をスキップ
                       fixtures: false,
                       # ビュースペックの作成をスキップ(UIのテストはフィーチャスペックに任せる)
                       view_specs: false,
                       # ヘルパースペックの作成をスキップ
                       helper_specs: false,
                       # ルーティングスペックの作成をスキップ
                       routing_specs: false,
                       # コントローラースペックの作成をスキップ
                       controller_specs: false,
                       # リクエストスペックの作成をスキップ
                       request_specs: false
    end
  end
end
