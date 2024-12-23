class Organization < ApplicationRecord
	enum :billing_cycle, { monthly: 0, quarterly: 1, yearly: 3 }, validate: true, default: 0 # This line gets reported as the error
	enum :credit_type, { none: 0, fixed: 1, percentage: 3 } # This line is the real error, change none to nothing to fix it.

	# Open rails console and run the following commands to reproduce the error:
	# org = Organization.new
end
