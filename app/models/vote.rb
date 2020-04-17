class Vote < ApplicationRecord
  belongs_to :charity
  enum status: {
    created: "created",
    xfers_processing: "xfers_processing",
    completed: "completed",
    failed: "failed",
  }
end
