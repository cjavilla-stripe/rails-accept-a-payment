# == Schema Information
#
# Table name: submissions
#
#  id                :bigint           not null, primary key
#  title             :string
#  price             :integer
#  stripe_payment_id :string
#  status            :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Submission < ApplicationRecord
end
