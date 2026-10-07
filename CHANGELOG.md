# Changelog

## Unreleased
- Share protobuf definitions from `temporalio` instead of shipping generated Temporal API classes.
- Define `Temporal::SHARED_PROTOBUFS` so dependents can detect the shared-protobuf build.
- Stop setting the removed `namespace` field on `ScheduleActivityTaskCommandAttributes`.
- Binary-encode `ProtoJSON` payload data so messages with non-ASCII strings serialize.

## 0.0.1
- First release
