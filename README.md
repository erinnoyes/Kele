# **Kele**

Kele is a Ruby Gem API Client to access the Bloc API 

## How to Use
(Use Bloc.io email and password to access the API)
```
$ irb
>> require './lib/kele'
=> true
>> Kele.new("jane@gmail.com", "abc123")
```

To retrieve user info:

```
$ kele_client.get_me
```

To retrieve your mentor's current availability:
```
$ kele_client.get_mentor_availability(mentor_id)
```

To retrieve roadmaps:
```
$ kele_client.get_roadmap(chain_id)
```
...and checkpoints
```
$ kele_client.get_checkpoint(checkpoint_id)
```
(Retrieve checkpoint IDs from the get_roadmap response.)

To list remaining checkpoints: 
```
$ kele_client.get_remaining_checkpoints(chain_id)
```

To retrieve a list of my messages:
```
$ kele_client.get_messages(1) # returns the first page of message threads
$ kele_client.get_messages # returns all message threads 
```

To send a message: 
```
$ kele.client.create_message(sender, recipient_id, token, subject, text)
```












