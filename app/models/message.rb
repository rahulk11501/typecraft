class Message < ApplicationRecord
  belongs_to :user
  belongs_to :task

  after_create :broadcast_message

  def broadcast_message
    broadcast_append_to(
      [ task, "messages" ], # This is channel name
      target: "messages", # This is target id of the div
      partial: "messages/message",
      locals: { message: self }
    )
  end
end
