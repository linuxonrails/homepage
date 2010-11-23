# This will guess the User class
=begin
Factory.define do

end
=end

def to_char i
  i = i-1
  ((i%26)+97).chr
end

Factory.define :user do |u|
  u.name 'John'
end
  
Factory.define :post do |p|
  p.sequence(:title) {|a| 'My post number '+ a.to_s}
  p.body 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a libero non diam scelerisque ultricies. Vestibulum venenatis tempor arcu vitae aliquet. Nunc sit amet magna vel elit aliquet tempor. Sed eget libero lorem, id fringilla est. Integer ornare pharetra imperdiet. Sed volutpat dapibus tellus, quis consectetur enim pretium posuere. In libero lacus, pulvinar sagittis varius id, tincidunt ac neque. In venenatis tempus enim, eu pretium neque condimentum gravida. Phasellus ipsum leo, congue non feugiat vitae, pharetra egestas eros. Aliquam eros lectus, lacinia ac ultricies ut, pulvinar sed ipsum. Sed rutrum, dolor nec malesuada interdum, urna neque ornare felis, eget cursus justo lorem sed dui. Aenean malesuada massa et neque posuere elementum iaculis et nisl. Etiam mi est, consequat et laoreet vehicula, sodales eget tellus. In rutrum facilisis ante nec luctus. '
  p.sequence(:published_on) {|n| Date.today - 30.day + n.day}
end
  
=begin

Factory.define :charge do |c|
  c.name  'Carga test'
  c.amount  2.0
end

Factory.define :billing do |b|
  b.name 'Testing'
  b.billing_start '01/04/2010'
  b.billing_end '30/04/2010'
  b.bill_date '01/02/2010'
end

Factory.define :subscription do |s|
  s.sequence(:number) {|n| "6#{sprintf "%08.f", n}"}
  s.portability false
end

Factory.define :tariff do |t|
  t.name 'Mov10'
end

Factory.define :destination do |d|
  d.name 'Destino1'
end

Factory.define :customer do |c|
  c.name 'Fulano'
  c.sequence(:nif) {|n| "3452344343#{n}"}
  c.document_type_id 4
  c.company Company.first
  c.surname 'Perez'
  c.address 'Avda. Miramar, 35'
  c.pobox '29640'
  c.city 'FUENGIROLA'
  c.province 'MALAGA'
  c.bankaccount '00043006780000012345'
end

Factory.define :user do |u|
  u.login 'user'
  u.password 'clave01'
  u.password_confirmation 'clave01'
  u.email 'user@user.com'
end

Factory.define :spantel_user, :class => User do |u|
  u.login 'david'
  u.password 'clave01'
  u.password_confirmation 'clave01'
  u.openid_identifier 'http://openid.spantel.es/david'
  u.email 'david@spantel.es'
end

Factory.define :bill do |b|
  b.sequence(:number) { |n| "MSPA-000#{n}"}
  b.base_imponible 12
  b.base_imponible_after_rules 12
  b.total 13
end

Factory.define :cdr_line do |cdr|
  cdr.origin '952444333'
  cdr.sequence(:destination) {|n| "003495122323#{n%10}"}
  cdr.cost_price 0.05
  cdr.tarified false
  cdr.sequence(:start) {|n| "2010-#{Date.today.month}-#{n%26 +2} #{n%24}:#{rand 60}:#{rand 60}"}
  cdr.duration 120
end

Factory.define :cdr_file do |cdr_file|
  cdr_file.sequence (:filename) { |n| "Spantel_#{n}"}
end

Factory.define :company do |company|
  company.code "MSPA-2010"
  company.bill_serie 1
end

Factory.define :document_type do |dt|
  dt.sequence(:name) {|n| "pasaporte-a"+to_char(n)}
end


Factory.define :country do |c|
  c.sequence(:name) {|n| "pasaporte-a"+to_char(n)}
end

Factory.define :prefix do |p|
end
=end

