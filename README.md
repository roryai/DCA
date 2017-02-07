Process:


Read code I wrote at Makers where I used capybara

Research BDD (mentioned during phone interview)

Revisit capybara github to refresh my memory

Revisit materials Makers provided for capybara

Visit rspec website


```
gem install capybara
rspec --init
```

Write my first test, run rspec.


Come across several errors ('Unable to find Mozilla geckodriver', ), leading me on a chain of bugfixes that didn't resolve the issue.


Spent hours trying to fix it using suggestions on stack overflow. Ended up rolling back to selenium-webdriver 2.53.4, which produced a different issue ('unable to obtain stable firefox connection in 60 seconds'). After more sleuthing I determined that it was probably an issue with my version of Firefox.


I uninstalled Firefox 51.0.1 and used 45.7 instead. Page finally loads!

However, my slow internet results in a timeout error- going to try again later.
