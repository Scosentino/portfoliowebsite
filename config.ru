use Rack::Static,
  :urls => ["/img", "/js", "/css"],
  :root => "Public/Portfolio"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('Public/Portfolio/indexblank.html', File::RDONLY)
  ]
}