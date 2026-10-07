require 'temporal/connection/errors'
require 'temporal/workflow/command'
require 'temporal/connection/serializer/schedule_activity'

describe Temporal::Connection::Serializer::ScheduleActivity do
  let(:example_command) do
    Temporal::Workflow::Command::ScheduleActivity.new(
      activity_id: 42,
      activity_type: 'TestActivity',
      input: nil,
      namespace: 'test-namespace',
      task_queue: 'test-task-queue',
      retry_policy: nil,
      timeouts: { schedule_to_close: 10, schedule_to_start: 5, start_to_close: 5, heartbeat: 1 },
      headers: nil,
    )
  end

  describe 'to_proto' do
    it 'serializes a command that carries a namespace' do
      result = described_class.new(example_command).to_proto

      expect(result.command_type).to eq(:COMMAND_TYPE_SCHEDULE_ACTIVITY_TASK)
      attribs = result.schedule_activity_task_command_attributes
      expect(attribs.activity_id).to eq('42')
      expect(attribs.activity_type.name).to eq('TestActivity')
      expect(attribs.task_queue.name).to eq('test-task-queue')
      expect(attribs.schedule_to_close_timeout.seconds).to eq(10)
      expect(attribs.heartbeat_timeout.seconds).to eq(1)
    end
  end
end
