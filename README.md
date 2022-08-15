# PDF

* Gem:

```rb
gem "prawn", "~> 2.4"
```

Instalar ActiveStorage:

```shell
$ rails active_storage:install
$ rails db:migrate
```

Crear scaffold de people:

```shell
$ rails g scaffold people name last_name age cellphone
```

Modelo de Person:

```rb
  class Person < ApplicationRecord
    has_one_attached :thumbnail
  end
```


Agregar a los StrongsParams:

```rb
  def person_params
    params.require(:person).permit(:name, :last_name, :age, :cellphone, :thumbnail)
  end
```


Agregar campo de imagen al formulario:

```rb
  <div>
    <%= form.label :thumbnail %>
    <%= form.file_field :thumbnail %>
  </div>
```

Agregar vista de la imagen en `_person.html.erb`

```rb
  <% if person.thumbnail.attached? %>
    <%= image_tag person.thumbnail, style: 'width:200px;height:200px;' %>
  <% end %>
```


