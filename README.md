# Bullet Test Case

This repository is a minimal test case to demonstrate an incorrect occurrence
of "AVOID eager loading detected" from the bullet gem.

To run:

```console
$ bundle i
$ bundle exec db:create db:migrate
$ bundle exec rails console < run.rb
```

Expected: the script completes without any bullet errors.

Actual: the script exits with the exception:

```
AVOID eager loading detected
  M1M2 => [:m1]
  Remove from your query: .includes([:m1])
```
