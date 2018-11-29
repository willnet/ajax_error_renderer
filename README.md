# AjaxErrorRenderer

[![CircleCI](https://circleci.com/gh/willnet/ajax_error_renderer/tree/master.svg?style=svg)](https://circleci.com/gh/willnet/ajax_error_renderer/tree/master)

AjaxErrorRenderer is a validation error renderer for ajax request.

If you use turbolinks and form_with, you may need SJR(Server-generated JavaScript Responses) on validation errors. But it's a pain to add similar SJR code with every forms. AjaxErrorRenderer gives you render_ajax_error method to remove duplicated SJR.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ajax_error_renderer'
```

And then execute:

```bash
$ bundle
```

## Usage

First, `include AjaxErrorRenderer` in your controller like following.

```ruby
class ApplicationController < ActionController::Base
  include AjaxErrorRenderer
end
```

Then you can use render_ajax_error method like following.

```ruby
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name))
    if @user.save
      redirect_to users_path, notice: 'You created a user successfully!'
    else
      render_ajax_error model: @user
    end
  end
end
```

So error messages display within `#errors` by default.

```erb
<%= form_with(model: @user) do |form| %>
  <div id="error">
    <%# Error Messages display here! %>
  </div>

  <div class="field">
    <%= form.label :name %>
    <%= form.text_field :name %>
  </div>

  <div class="actions">
    <%= form.submit %>
  </div>
<% end %>
```

If you want to display the messages in other place, you can do it by passing `location` option to `render_ajax_error` with css like following.


```ruby
render_ajax_error model: @user, location: '.error_messages'
```

### Custom Template

You can create custome template with a generator like following.

```sh
./bin/rails g ajax_error_renderer:view
```

This generator command generates `app/views/ajax_errors/_error.html.erb`, and you can customize it freely.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
