organization = Organization.create!(name: 'acme', slug: 'acme')
User.create!(first_name: 'Jane', last_name: 'Doe',
            email: 'jane.doe@example.com', password: '123test',
            organization: organization)
