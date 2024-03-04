.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static s:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "\n\'envoy/config/overload/v3/overload.proto\u0012\u0018envoy.config.overload.v3\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00a9\u0001\n\u000fResourceMonitor\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012,\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:4\u009a\u00c5\u0088\u001e/\n-envoy.config.overload.v2alpha.ResourceMonitorB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006config\"q\n\u0010ThresholdTrigger\u0012&\n\u0005value\u0018\u0001 \u0001(\u0001B\u0017\u00faB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000:5\u009a\u00c5\u0088\u001e0\n.envoy.config.overload.v2alpha.ThresholdTrigger\"z\n\rScaledTrigger\u00122\n\u0011scaling_threshold\u0018\u0001 \u0001(\u0001B\u0017\u00faB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u00125\n\u0014saturation_threshold\u0018\u0002 \u0001(\u0001B\u0017\u00faB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000\u00f0?)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\"\u00e0\u0001\n\u0007Trigger\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012?\n\tthreshold\u0018\u0002 \u0001(\u000b2*.envoy.config.overload.v3.ThresholdTriggerH\u0000\u00129\n\u0006scaled\u0018\u0003 \u0001(\u000b2\'.envoy.config.overload.v3.ScaledTriggerH\u0000:,\u009a\u00c5\u0088\u001e\'\n%envoy.config.overload.v2alpha.TriggerB\u0014\n\rtrigger_oneof\u0012\u0003\u00f8B\u0001\"\u00f7\u0003\n\u001fScaleTimersOverloadActionConfig\u0012k\n\u0013timer_scale_factors\u0018\u0001 \u0003(\u000b2D.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimerB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u001a\u00e3\u0001\n\nScaleTimer\u0012^\n\u0005timer\u0018\u0001 \u0001(\u000e2C.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.TimerTypeB\n\u00faB\u0007\u0082\u0001\u0004\u0010\u0001 \u0000\u00120\n\u000bmin_timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationH\u0000\u0012+\n\tmin_scale\u0018\u0003 \u0001(\u000b2\u0016.envoy.type.v3.PercentH\u0000B\u0016\n\u000foverload_adjust\u0012\u0003\u00f8B\u0001\"\u0080\u0001\n\tTimerType\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012#\n\u001fHTTP_DOWNSTREAM_CONNECTION_IDLE\u0010\u0001\u0012\u001f\n\u001bHTTP_DOWNSTREAM_STREAM_IDLE\u0010\u0002\u0012\u001c\n\u0018TRANSPORT_SOCKET_CONNECT\u0010\u0003\"\u00c7\u0001\n\u000eOverloadAction\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012=\n\u0008triggers\u0018\u0002 \u0003(\u000b2!.envoy.config.overload.v3.TriggerB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u0012*\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any:3\u009a\u00c5\u0088\u001e.\n,envoy.config.overload.v2alpha.OverloadAction\"O\n\u0013BufferFactoryConfig\u00128\n%minimum_account_to_track_power_of_two\u0018\u0001 \u0001(\rB\t\u00faB\u0006*\u0004\u00188(\n\"\u00d5\u0002\n\u000fOverloadManager\u00123\n\u0010refresh_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012N\n\u0011resource_monitors\u0018\u0002 \u0003(\u000b2).envoy.config.overload.v3.ResourceMonitorB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u00129\n\u0007actions\u0018\u0003 \u0003(\u000b2(.envoy.config.overload.v3.OverloadAction\u0012L\n\u0015buffer_factory_config\u0018\u0004 \u0001(\u000b2-.envoy.config.overload.v3.BufferFactoryConfig:4\u009a\u00c5\u0088\u001e/\n-envoy.config.overload.v2alpha.OverloadManagerBA\n&io.envoyproxy.envoy.config.overload.v3B\rOverloadProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v10, "TypedConfig"

    const-string v11, "ConfigType"

    filled-new-array {v3, v10, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v0, v11}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->c:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Value"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->e:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "ScalingThreshold"

    const-string v6, "SaturationThreshold"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->g:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Threshold"

    const-string v6, "Scaled"

    const-string v7, "TriggerOneof"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->i:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "TimerScaleFactors"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->k:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Timer"

    const-string v5, "MinTimeout"

    const-string v6, "MinScale"

    const-string v7, "OverloadAdjust"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->m:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Triggers"

    filled-new-array {v3, v4, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->o:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "MinimumAccountToTrackPowerOfTwo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->q:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "RefreshInterval"

    const-string v3, "ResourceMonitors"

    const-string v4, "Actions"

    const-string v5, "BufferFactoryConfig"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 32
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/d;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
