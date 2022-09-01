# Rails Api App

Template de rails para crear una aplicacion api-based

* generacion del proyecto :
```
rails new rails-api-app --api  --database=postgresql
bundle install
```
* generacion de los modelos
```
rails g model <modelo>
```
* generacion de los controllers
```
rails g controller <modelo>s
```
* generacion de la ruta (config/routes.rb)
```
resources :<tabla>s
```
* devolver un objeto en json
```
render json:User.all #por ejemplo
```
* devolver un error
```
e = Errors::NotFound.new
render json: ErrorSerializer.new(e), status: e.status
```
