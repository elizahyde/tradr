As usual, add your info to the `.env` file and run `bundle install` and then `rake db:setup`.

```
RACK_ENV=development
DB_USER=yours
DB_PASS=yours
```

---

We're going to build an stock app with jQuery, AJAX, and some graphing. Users will will track their stocks. A user has many stocks and an stock belongs to a user.

```ruby
# User: name, email, password_digest
# stock: activity (run), value (5), units (miles), completed (date)

# Example:
e = stock.create(:activity => run, :value => 3.1, :units => miles)
u.stocks << e
```

Your Tasks:

1. Add Foundation. Use a gem or do it manually. Do a complete job here - proper layout, header, footer, alerts, etc. No Adam, you may not use Bootstrap instead.
2. Set up the stock model and associations.
3. Seed the database with a few dozen sample records.

**Pause**

We'll build user login/logout with AJAX together.

**Unpause**

4. Create an stocksController. On stocks#index, show all the stocks for a logged-in user.
5. Don't neglect the front-end: Add a nav item for stocks.
6. Add a 'New stock' button and implement a feature to add stocks using AJAX.
7. Add a dropdown menu that shows of all the activities (meaning types of stocks) that the logged-in user has performed.

(The dropdown menu you're adding shouldn't do anything yet. It should just exist.)

**Pause**

Together, we'll add an AJAX call to get stock data related to the selected activity.

**Unpause**

8. Write code for the 'done' callback that adds a Morris JS chart to the page using the stock data for the selected activity.
