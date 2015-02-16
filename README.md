# ruby-challenge

ruby-challenge is a set of challenges using [Rspec](http://rspec.info/) and [Guard](https://github.com/guard/guard)
to help you learn the Ruby programming language.

Your challenge is to write ruby code in the lib/challenges.rb file that makes the tests (also called specs) pass.
Just save the challenges.rb file and Guard which automatically detect file changes and run Rspec
to verify your code makes the tests pass.

## Installation

Download and install [Git](http://git-scm.com/downloads)

Install [rvm](https://rvm.io/rvm/install/) and [Ruby 2.1.5](https://www.ruby-lang.org/en/)

```sh
\curl -L https://get.rvm.io | bash -s stable --ruby --ruby=2.1.5
```

Clone the ruby-challenge repository

```sh
git clone git@github.com:mattmcginnis/ruby-challenge.git
cd ruby-challenge
```

Install [bundler](http://www.ruby-lang.org/en/)

```sh
gem install bundler
```

Run bundler

```sh
bundle
```

## Running specs (tests)

```sh
bundle exec guard
```


This will start [Guard](https://github.com/guard/guard), which automatically detect file changes and run the appropriate specs.
If you want to run the specs without changing a file, just hit the enter key at the guard prompt.

Or you can run the specs manually without running Guard.

```sh
bundle exec rspec
```

## What happends when a test fails.

Rspec output will look something like this:

```sh
Failures:

  1) #multiply returns the result of multiplying two numbers
     Failure/Error: expect(multiply(3,4)).to eq(12)

       expected: 12
            got: nil

       (compared using ==)
     # ./spec/lib/challenges_spec.rb:17:in `block (2 levels) in <top (required)>'

Finished in 0.00148 seconds (files took 0.42857 seconds to load)
3 examples, 1 failure

Failed examples:

rspec ./spec/lib/challenges_spec.rb:16 # #multiply returns the result of multiplying two numbers
```

Each test that fails will be numbered like "1)" above. This line and the next tells you the spec that is failing.

```sh

Failures:

  1) #multiply returns the result of multiplying two numbers
     Failure/Error: expect(multiply(3,4)).to eq(12)
```

The "expected:" line tells  you what the test expected as a result and the "got:" line tells you the actual result
of running the spec.

```sh
       expected: 12
            got: nil
```

The next two lines tell you what comparison was being used and the line number of the spec in the challenges_spec.rb file that is failing.

```sh
       (compared using ==)
     # ./spec/lib/challenges_spec.rb:17:in `block (2 levels) in <top (required)>'
```

The "Finished..." line tells you how long it took to run the specs.

```sh
Finished in 0.00148 seconds (files took 0.42857 seconds to load)
```

The next line tells you how many examples were run and how many failed.

```sh
3 examples, 1 failure
```

The next two lines tell you the line number and description of the example in the challenges_spec.rb file that contains the failing spec.
```sh
Failed examples:

rspec ./spec/lib/challenges_spec.rb:16 # #multiply returns the result of multiplying two numbers
```

If you write code that makes all the specs pass (which is your goal), the output from Rspec will look like this:

```sh
17:47:43 - INFO - Run all
17:47:43 - INFO - Running all specs
...

Finished in 0.0014 seconds (files took 0.43432 seconds to load)
3 examples, 0 failures
```
