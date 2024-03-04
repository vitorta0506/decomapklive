.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "\n/envoy/config/cluster/v3/outlier_detection.proto\u0012\u0017envoy.config.cluster.v3\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u008c\u000c\n\u0010OutlierDetection\u00125\n\u000fconsecutive_5xx\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00125\n\u0008interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012?\n\u0012base_ejection_time\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000\u0012C\n\u0014max_ejection_percent\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012H\n\u0019enforcing_consecutive_5xx\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012E\n\u0016enforcing_success_rate\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012@\n\u001asuccess_rate_minimum_hosts\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012A\n\u001bsuccess_rate_request_volume\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012?\n\u0019success_rate_stdev_factor\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012A\n\u001bconsecutive_gateway_failure\u0018\n \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012T\n%enforcing_consecutive_gateway_failure\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012*\n\"split_external_local_origin_errors\u0018\u000c \u0001(\u0008\u0012F\n consecutive_local_origin_failure\u0018\r \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012Y\n*enforcing_consecutive_local_origin_failure\u0018\u000e \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012R\n#enforcing_local_origin_success_rate\u0018\u000f \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012K\n\u001cfailure_percentage_threshold\u0018\u0010 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012K\n\u001cenforcing_failure_percentage\u0018\u0011 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012X\n)enforcing_failure_percentage_local_origin\u0018\u0012 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002\u0018d\u0012F\n failure_percentage_minimum_hosts\u0018\u0013 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012G\n!failure_percentage_request_volume\u0018\u0014 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012>\n\u0011max_ejection_time\u0018\u0015 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0008\u00faB\u0005\u00aa\u0001\u0002*\u0000:,\u009a\u00c5\u0088\u001e\'\n%envoy.api.v2.cluster.OutlierDetectionBH\n%io.envoyproxy.envoy.config.cluster.v3B\u0015OutlierDetectionProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 7
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->a:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Consecutive5Xx"

    const-string v3, "Interval"

    const-string v4, "BaseEjectionTime"

    const-string v5, "MaxEjectionPercent"

    const-string v6, "EnforcingConsecutive5Xx"

    const-string v7, "EnforcingSuccessRate"

    const-string v8, "SuccessRateMinimumHosts"

    const-string v9, "SuccessRateRequestVolume"

    const-string v10, "SuccessRateStdevFactor"

    const-string v11, "ConsecutiveGatewayFailure"

    const-string v12, "EnforcingConsecutiveGatewayFailure"

    const-string v13, "SplitExternalLocalOriginErrors"

    const-string v14, "ConsecutiveLocalOriginFailure"

    const-string v15, "EnforcingConsecutiveLocalOriginFailure"

    const-string v16, "EnforcingLocalOriginSuccessRate"

    const-string v17, "FailurePercentageThreshold"

    const-string v18, "EnforcingFailurePercentage"

    const-string v19, "EnforcingFailurePercentageLocalOrigin"

    const-string v20, "FailurePercentageMinimumHosts"

    const-string v21, "FailurePercentageRequestVolume"

    const-string v22, "MaxEjectionTime"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 11
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 12
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 13
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 14
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 16
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
