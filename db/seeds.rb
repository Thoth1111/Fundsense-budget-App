# frozen_string_literal: true

user = User.create(
  name: 'Pat Wach',
  email: 'pat@patwach.com',
  password: 'PatWach'
)

if user.persisted?
  savings = Group.create(
    name: 'Savings',
    icon: '',
    user_id: user.id
  )

  groceries = Group.create(
    name: 'Groceries',
    icon: '',
    user_id: user.id
  )

  rent = Group.create(
    name: 'Rent',
    icon: '',
    user_id: user.id
  )
  Entry.create(
    name: 'May deposit',
    amount: 100_000,
    group_id: savings.id,
    author_id: user.id
  )

  Entry.create(
    name: 'June deposit',
    amount: 70_000,
    group_id: savings.id,
    author_id: user.id
  )

  Entry.create(
    name: 'food stuffs',
    amount: 10_000,
    group_id: groceries.id,
    author_id: user.id
  )

  Entry.create(
    name: 'shower items',
    amount: 2000,
    group_id: groceries.id,
    author_id: user.id
  )

  Entry.create(
    name: 'May rent',
    amount: 25_000,
    group_id: rent.id,
    author_id: user.id
  )

  Entry.create(
    name: 'June rent',
    amount: 25_000,
    group_id: rent.id,
    author_id: user.id
  )
  puts 'Seed data created successfully.'
else
  puts 'Failed to create user.'
end


user2 = User.create(
  name: 'Al Sim',
  email: 'sim@alsim.com',
  password: 'SimAAl'
)

if user2.persisted?

  entertainment = Group.create(
    name: 'Entertainment',
    icon: '',
    user_id: user2.id
  )

  travel = Group.create(
    name: 'Travel',
    icon: '',
    user_id: user2.id
  )

  investment = Group.create(
    name: 'Investment',
    icon: '',
    user_id: user2.id
  )

  Entry.create(
    name: 'Date night',
    amount: 4000,
    group_id: entertainment.id,
    author_id: user2.id
  )

  Entry.create(
    name: 'Video games',
    amount: 5000,
    group_id: entertainment.id,
    author_id: user2.id
  )

  Entry.create(
    name: 'Train ticket',
    amount: 6000,
    group_id: travel.id,
    author_id: user2.id
  )

  Entry.create(
    name: 'Air bnb',
    amount: 12_000,
    group_id: travel.id,
    author_id: user2.id
  )

  Entry.create(
    name: 'Stocks',
    amount: 10_000,
    group_id: investment.id,
    author_id: user2.id
  )

  Entry.create(
    name: 'Bonds',
    amount: 20_000,
    group_id: investment.id,
    author_id: user2.id
  )
  puts 'Seed data created successfully.'
else
  puts 'Failed to create user.'
end
