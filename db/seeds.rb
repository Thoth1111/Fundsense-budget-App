# frozen_string_literal: true

pat = User.create(
  name: 'Pat Wach',
  email: 'pat@patwach.com',
  password: 'PatWach'
)

if pat.persisted?

  sacco = Group.create(
    name: 'Sacco',
    icon: 'sacco.jpg',
    user_id: pat.id
  )

  groceries = Group.create(
    name: 'Groceries',
    icon: 'groceries.jpg',
    user_id: pat.id
  )

  rent = Group.create(
    name: 'Rent',
    icon: 'rent.jpg',
    user_id: pat.id
  )
  Entry.create(
    name: 'May deposit',
    amount: 100_000,
    group_id: sacco.id,
    author_id: pat.id
  )

  Entry.create(
    name: 'June deposit',
    amount: 70_000,
    group_id: sacco.id,
    author_id: pat.id
  )

  Entry.create(
    name: 'food stuffs',
    amount: 10_000,
    group_id: groceries.id,
    author_id: pat.id
  )

  Entry.create(
    name: 'shower items',
    amount: 2000,
    group_id: groceries.id,
    author_id: pat.id
  )

  Entry.create(
    name: 'May rent',
    amount: 25_000,
    group_id: rent.id,
    author_id: pat.id
  )

  Entry.create(
    name: 'June rent',
    amount: 25_000,
    group_id: rent.id,
    author_id: pat.id
  )
  puts 'Seed data created successfully.'
else
  puts 'Failed to create user.'
end


alw = User.create(
  name: 'Al Sim',
  email: 'sim@alsim.com',
  password: 'SimAAl'
)

if alw.persisted?

  entertainment = Group.create(
    name: 'Entertainment',
    icon: 'ent.jpg',
    user_id: alw.id
  )

  travel = Group.create(
    name: 'Travel',
    icon: 'travel.jpg',
    user_id: alw.id
  )

  investment = Group.create(
    name: 'Investment',
    icon: 'inv.jpg',
    user_id: alw.id
  )

  Entry.create(
    name: 'Date night',
    amount: 4000,
    group_id: entertainment.id,
    author_id: alw.id
  )

  Entry.create(
    name: 'Video games',
    amount: 5000,
    group_id: entertainment.id,
    author_id: alw.id
  )

  Entry.create(
    name: 'Train ticket',
    amount: 6000,
    group_id: travel.id,
    author_id: alw.id
  )

  Entry.create(
    name: 'Air bnb',
    amount: 12_000,
    group_id: travel.id,
    author_id: alw.id
  )

  Entry.create(
    name: 'Stocks',
    amount: 10_000,
    group_id: investment.id,
    author_id: alw.id
  )

  Entry.create(
    name: 'Bonds',
    amount: 20_000,
    group_id: investment.id,
    author_id: alw.id
  )
  puts 'Seed data created successfully.'
else
  puts 'Failed to create user.'
end
