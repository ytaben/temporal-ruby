require 'grpc'
require 'temporalio/api/workflowservice/v1/request_response'

module Temporal
  module Connection
    module WorkflowService
      class Service
        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'temporal.api.workflowservice.v1.WorkflowService'

        rpc :RegisterNamespace, Temporalio::Api::WorkflowService::V1::RegisterNamespaceRequest, Temporalio::Api::WorkflowService::V1::RegisterNamespaceResponse
        rpc :DescribeNamespace, Temporalio::Api::WorkflowService::V1::DescribeNamespaceRequest, Temporalio::Api::WorkflowService::V1::DescribeNamespaceResponse
        rpc :ListNamespaces, Temporalio::Api::WorkflowService::V1::ListNamespacesRequest, Temporalio::Api::WorkflowService::V1::ListNamespacesResponse
        rpc :UpdateNamespace, Temporalio::Api::WorkflowService::V1::UpdateNamespaceRequest, Temporalio::Api::WorkflowService::V1::UpdateNamespaceResponse
        rpc :DeprecateNamespace, Temporalio::Api::WorkflowService::V1::DeprecateNamespaceRequest, Temporalio::Api::WorkflowService::V1::DeprecateNamespaceResponse
        rpc :StartWorkflowExecution, Temporalio::Api::WorkflowService::V1::StartWorkflowExecutionRequest, Temporalio::Api::WorkflowService::V1::StartWorkflowExecutionResponse
        rpc :GetWorkflowExecutionHistory, Temporalio::Api::WorkflowService::V1::GetWorkflowExecutionHistoryRequest, Temporalio::Api::WorkflowService::V1::GetWorkflowExecutionHistoryResponse
        rpc :PollWorkflowTaskQueue, Temporalio::Api::WorkflowService::V1::PollWorkflowTaskQueueRequest, Temporalio::Api::WorkflowService::V1::PollWorkflowTaskQueueResponse
        rpc :RespondWorkflowTaskCompleted, Temporalio::Api::WorkflowService::V1::RespondWorkflowTaskCompletedRequest, Temporalio::Api::WorkflowService::V1::RespondWorkflowTaskCompletedResponse
        rpc :RespondWorkflowTaskFailed, Temporalio::Api::WorkflowService::V1::RespondWorkflowTaskFailedRequest, Temporalio::Api::WorkflowService::V1::RespondWorkflowTaskFailedResponse
        rpc :PollActivityTaskQueue, Temporalio::Api::WorkflowService::V1::PollActivityTaskQueueRequest, Temporalio::Api::WorkflowService::V1::PollActivityTaskQueueResponse
        rpc :RecordActivityTaskHeartbeat, Temporalio::Api::WorkflowService::V1::RecordActivityTaskHeartbeatRequest, Temporalio::Api::WorkflowService::V1::RecordActivityTaskHeartbeatResponse
        rpc :RecordActivityTaskHeartbeatById, Temporalio::Api::WorkflowService::V1::RecordActivityTaskHeartbeatByIdRequest, Temporalio::Api::WorkflowService::V1::RecordActivityTaskHeartbeatByIdResponse
        rpc :RespondActivityTaskCompleted, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCompletedRequest, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCompletedResponse
        rpc :RespondActivityTaskCompletedById, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCompletedByIdRequest, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCompletedByIdResponse
        rpc :RespondActivityTaskFailed, Temporalio::Api::WorkflowService::V1::RespondActivityTaskFailedRequest, Temporalio::Api::WorkflowService::V1::RespondActivityTaskFailedResponse
        rpc :RespondActivityTaskFailedById, Temporalio::Api::WorkflowService::V1::RespondActivityTaskFailedByIdRequest, Temporalio::Api::WorkflowService::V1::RespondActivityTaskFailedByIdResponse
        rpc :RespondActivityTaskCanceled, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCanceledRequest, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCanceledResponse
        rpc :RespondActivityTaskCanceledById, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCanceledByIdRequest, Temporalio::Api::WorkflowService::V1::RespondActivityTaskCanceledByIdResponse
        rpc :RequestCancelWorkflowExecution, Temporalio::Api::WorkflowService::V1::RequestCancelWorkflowExecutionRequest, Temporalio::Api::WorkflowService::V1::RequestCancelWorkflowExecutionResponse
        rpc :SignalWorkflowExecution, Temporalio::Api::WorkflowService::V1::SignalWorkflowExecutionRequest, Temporalio::Api::WorkflowService::V1::SignalWorkflowExecutionResponse
        rpc :SignalWithStartWorkflowExecution, Temporalio::Api::WorkflowService::V1::SignalWithStartWorkflowExecutionRequest, Temporalio::Api::WorkflowService::V1::SignalWithStartWorkflowExecutionResponse
        rpc :ResetWorkflowExecution, Temporalio::Api::WorkflowService::V1::ResetWorkflowExecutionRequest, Temporalio::Api::WorkflowService::V1::ResetWorkflowExecutionResponse
        rpc :TerminateWorkflowExecution, Temporalio::Api::WorkflowService::V1::TerminateWorkflowExecutionRequest, Temporalio::Api::WorkflowService::V1::TerminateWorkflowExecutionResponse
        rpc :ListOpenWorkflowExecutions, Temporalio::Api::WorkflowService::V1::ListOpenWorkflowExecutionsRequest, Temporalio::Api::WorkflowService::V1::ListOpenWorkflowExecutionsResponse
        rpc :ListClosedWorkflowExecutions, Temporalio::Api::WorkflowService::V1::ListClosedWorkflowExecutionsRequest, Temporalio::Api::WorkflowService::V1::ListClosedWorkflowExecutionsResponse
        rpc :ListWorkflowExecutions, Temporalio::Api::WorkflowService::V1::ListWorkflowExecutionsRequest, Temporalio::Api::WorkflowService::V1::ListWorkflowExecutionsResponse
        rpc :ListArchivedWorkflowExecutions, Temporalio::Api::WorkflowService::V1::ListArchivedWorkflowExecutionsRequest, Temporalio::Api::WorkflowService::V1::ListArchivedWorkflowExecutionsResponse
        rpc :ScanWorkflowExecutions, Temporalio::Api::WorkflowService::V1::ScanWorkflowExecutionsRequest, Temporalio::Api::WorkflowService::V1::ScanWorkflowExecutionsResponse
        rpc :CountWorkflowExecutions, Temporalio::Api::WorkflowService::V1::CountWorkflowExecutionsRequest, Temporalio::Api::WorkflowService::V1::CountWorkflowExecutionsResponse
        rpc :GetSearchAttributes, Temporalio::Api::WorkflowService::V1::GetSearchAttributesRequest, Temporalio::Api::WorkflowService::V1::GetSearchAttributesResponse
        rpc :RespondQueryTaskCompleted, Temporalio::Api::WorkflowService::V1::RespondQueryTaskCompletedRequest, Temporalio::Api::WorkflowService::V1::RespondQueryTaskCompletedResponse
        rpc :ResetStickyTaskQueue, Temporalio::Api::WorkflowService::V1::ResetStickyTaskQueueRequest, Temporalio::Api::WorkflowService::V1::ResetStickyTaskQueueResponse
        rpc :QueryWorkflow, Temporalio::Api::WorkflowService::V1::QueryWorkflowRequest, Temporalio::Api::WorkflowService::V1::QueryWorkflowResponse
        rpc :DescribeWorkflowExecution, Temporalio::Api::WorkflowService::V1::DescribeWorkflowExecutionRequest, Temporalio::Api::WorkflowService::V1::DescribeWorkflowExecutionResponse
        rpc :DescribeTaskQueue, Temporalio::Api::WorkflowService::V1::DescribeTaskQueueRequest, Temporalio::Api::WorkflowService::V1::DescribeTaskQueueResponse
        rpc :GetClusterInfo, Temporalio::Api::WorkflowService::V1::GetClusterInfoRequest, Temporalio::Api::WorkflowService::V1::GetClusterInfoResponse
        rpc :ListTaskQueuePartitions, Temporalio::Api::WorkflowService::V1::ListTaskQueuePartitionsRequest, Temporalio::Api::WorkflowService::V1::ListTaskQueuePartitionsResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
