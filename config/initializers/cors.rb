# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:5174/' # 允许的源（你的前端地址），可以使用 '*' 代表允许所有源

    resource '*', # 允许访问的资源路径，'*' 代表所有路径
      headers: :any, # 允许的头信息
      methods: [:get, :post, :put, :patch, :delete, :options, :head], # 允许的 HTTP 方法
      credentials: false # 是否允许发送 cookies（视你的需求而定）
  end
end