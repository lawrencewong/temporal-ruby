# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/common/v1/message.proto

require 'google/protobuf'

require 'temporal/enums/v1/common_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("temporal/common/v1/message.proto", :syntax => :proto3) do
    add_message "temporal.common.v1.DataBlob" do
      optional :encoding_type, :enum, 1, "temporal.enums.v1.EncodingType"
      optional :data, :bytes, 2
    end
    add_message "temporal.common.v1.Payloads" do
      repeated :payloads, :message, 1, "temporal.common.v1.Payload"
    end
    add_message "temporal.common.v1.Payload" do
      map :metadata, :string, :bytes, 1
      optional :data, :bytes, 2
    end
    add_message "temporal.common.v1.SearchAttributes" do
      map :indexed_fields, :string, :message, 1, "temporal.common.v1.Payload"
    end
    add_message "temporal.common.v1.Memo" do
      map :fields, :string, :message, 1, "temporal.common.v1.Payload"
    end
    add_message "temporal.common.v1.Header" do
      map :fields, :string, :message, 1, "temporal.common.v1.Payload"
    end
    add_message "temporal.common.v1.WorkflowExecution" do
      optional :workflow_id, :string, 1
      optional :run_id, :string, 2
    end
    add_message "temporal.common.v1.WorkflowType" do
      optional :name, :string, 1
    end
    add_message "temporal.common.v1.ActivityType" do
      optional :name, :string, 1
    end
    add_message "temporal.common.v1.RetryPolicy" do
      optional :initial_interval_in_seconds, :int32, 1
      optional :backoff_coefficient, :double, 2
      optional :maximum_interval_in_seconds, :int32, 3
      optional :maximum_attempts, :int32, 4
      repeated :non_retryable_error_types, :string, 5
    end
  end
end

module Temporal
  module Proto
    module Common
      module V1
        DataBlob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.DataBlob").msgclass
        Payloads = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.Payloads").msgclass
        Payload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.Payload").msgclass
        SearchAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.SearchAttributes").msgclass
        Memo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.Memo").msgclass
        Header = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.Header").msgclass
        WorkflowExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.WorkflowExecution").msgclass
        WorkflowType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.WorkflowType").msgclass
        ActivityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.ActivityType").msgclass
        RetryPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.common.v1.RetryPolicy").msgclass
      end
    end
  end
end