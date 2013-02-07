Gem::Specification.new do |s|
  s.name = 'syllables'
  s.version = '0.1.3'
  s.summary = 'syllables'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/syllables.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
