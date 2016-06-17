SHIFT_EVENTS = %w(start_shift end_shift start_break end_break).freeze
FactoryGirl.define do
  factory :shift_event do
    occurred_at { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    action      { SHIFT_EVENTS.sample }
    signature   { 'data:image/png;base64,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%E2%80%A6%E2%80%A6' }
    shift
  end
end
