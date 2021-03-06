# Bank Tech Test

This tech test was undertaken as part of Makers week 9. 

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- A user should be able to make a deposit into the bank account 
- A user should be able to make a withdrawal from the bank account
- A user can print an account statement which includes the date, amount and balance (as demonstrated with the example further down)
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

- Given a client makes a deposit of 1000 on 10-01-2023
- And a deposit of 2000 on 13-01-2023
- And a withdrawal of 500 on 14-01-2023
- When she prints her bank statement
- Then she would see: 

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

Gems installed 
- gem 'rubocop', require: false
- gem 'simplecov', require: false, group: :test