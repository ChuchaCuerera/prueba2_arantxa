require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end



test "Worker in charge" do
operation = operation(:o_one)
worker = Worker.create(name: "Ara", email: "ara@hotmail.com")
operation = Operation.new
assert @operation.worker.present?
end


# test "Worker in charge" do
# @operation = Operation.new
# assert_not_nil @operation.worker
# end

end
