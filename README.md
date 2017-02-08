Tests are [here.](https://github.com/roryai/DCA/blob/master/spec/DCA_tech_test_spec.rb)

###Process:

####Tuesday:


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


Come across several errors ( inc 'Unable to find Mozilla geckodriver'), leading me on a chain of bugfixes that didn't resolve the issue.


Spent hours trying to fix it using suggestions on stack overflow. Ended up rolling back to selenium-webdriver 2.53.4, which produced a different issue ('unable to obtain stable firefox connection in 60 seconds'). After more sleuthing I determined that it was probably an issue with my version of Firefox.


I uninstalled Firefox 51.0.1 and used 45.7 instead. Page finally loads!


However, my slow internet results in a timeout error- going to try again later.


####Wednesday morning:

Ran the test and it passed, internet now working fast enough to load the page in under 60 seconds.


Second test:


Tried the following different approaches before finding one that works:

```
click_link 'What we do'
```

```
within("header_nav") do
  click_link "What we do"
end
```

```
click_link page.first('What we do', minimum: 1)
```

```
page.first('What we do', minimum: 1).click
```

```
lick_link page.first(:css, 'What we do')
```

```
page.inspect
```

Re. the OR statement: I use https everywhere so I included both http and https links as successes in the test. I noticed that when I visit the http site I am automatically sent to the https version but I wanted to leave this in to discuss in the interview.
