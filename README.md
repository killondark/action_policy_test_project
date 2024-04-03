# README
Usage `#default_authorization_policy_class` for default behavior scope:
```ruby
policy = PostPolicy.new(user: admin)
policy.authorized_scope(Post.all) # => Post.all
policy.authorized_scope(User.all) # => User.all
policy.authorized_scope(Draft.all) # => Draft.all (working via #default_authorization_policy_class)
policy.authorized_scope("Test", type: :data) # => "Test"
```
