.class public final Lio/grpc/lb/v1/g;
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
    .locals 11

    const-string v0, "\n\u001egrpc/lb/v1/load_balancer.proto\u0012\ngrpc.lb.v1\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"\u00a4\u0001\n\u0012LoadBalanceRequest\u0012@\n\u000finitial_request\u0018\u0001 \u0001(\u000b2%.grpc.lb.v1.InitialLoadBalanceRequestH\u0000\u0012/\n\u000cclient_stats\u0018\u0002 \u0001(\u000b2\u0017.grpc.lb.v1.ClientStatsH\u0000B\u001b\n\u0019load_balance_request_type\")\n\u0019InitialLoadBalanceRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\"D\n\u0013ClientStatsPerToken\u0012\u001a\n\u0012load_balance_token\u0018\u0001 \u0001(\t\u0012\u0011\n\tnum_calls\u0018\u0002 \u0001(\u0003\"\u00a4\u0002\n\u000bClientStats\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0019\n\u0011num_calls_started\u0018\u0002 \u0001(\u0003\u0012\u001a\n\u0012num_calls_finished\u0018\u0003 \u0001(\u0003\u00125\n-num_calls_finished_with_client_failed_to_send\u0018\u0006 \u0001(\u0003\u0012)\n!num_calls_finished_known_received\u0018\u0007 \u0001(\u0003\u0012A\n\u0018calls_finished_with_drop\u0018\u0008 \u0003(\u000b2\u001f.grpc.lb.v1.ClientStatsPerTokenJ\u0004\u0008\u0004\u0010\u0005J\u0004\u0008\u0005\u0010\u0006\"\u00e1\u0001\n\u0013LoadBalanceResponse\u0012B\n\u0010initial_response\u0018\u0001 \u0001(\u000b2&.grpc.lb.v1.InitialLoadBalanceResponseH\u0000\u0012-\n\u000bserver_list\u0018\u0002 \u0001(\u000b2\u0016.grpc.lb.v1.ServerListH\u0000\u00129\n\u0011fallback_response\u0018\u0003 \u0001(\u000b2\u001c.grpc.lb.v1.FallbackResponseH\u0000B\u001c\n\u001aload_balance_response_type\"\u0012\n\u0010FallbackResponse\"c\n\u001aInitialLoadBalanceResponse\u0012?\n\u001cclient_stats_report_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationJ\u0004\u0008\u0001\u0010\u0002\"7\n\nServerList\u0012#\n\u0007servers\u0018\u0001 \u0003(\u000b2\u0012.grpc.lb.v1.ServerJ\u0004\u0008\u0003\u0010\u0004\"Z\n\u0006Server\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\u000c\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\u0005\u0012\u001a\n\u0012load_balance_token\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004drop\u0018\u0004 \u0001(\u0008J\u0004\u0008\u0005\u0010\u00062b\n\u000cLoadBalancer\u0012R\n\u000bBalanceLoad\u0012\u001e.grpc.lb.v1.LoadBalanceRequest\u001a\u001f.grpc.lb.v1.LoadBalanceResponse(\u00010\u0001BW\n\rio.grpc.lb.v1B\u0011LoadBalancerProtoP\u0001Z1google.golang.org/grpc/balancer/grpclb/grpc_lb_v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/lb/v1/g;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->a:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "InitialRequest"

    const-string v6, "ClientStats"

    const-string v7, "LoadBalanceRequestType"

    filled-new-array {v3, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/lb/v1/g;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->c:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/lb/v1/g;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->e:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "LoadBalanceToken"

    const-string v3, "NumCalls"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/lb/v1/g;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->g:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Timestamp"

    const-string v6, "NumCallsStarted"

    const-string v7, "NumCallsFinished"

    const-string v8, "NumCallsFinishedWithClientFailedToSend"

    const-string v9, "NumCallsFinishedKnownReceived"

    const-string v10, "CallsFinishedWithDrop"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/lb/v1/g;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->i:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "InitialResponse"

    const-string v5, "ServerList"

    const-string v6, "FallbackResponse"

    const-string v7, "LoadBalanceResponseType"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/lb/v1/g;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->k:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/lb/v1/g;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->m:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ClientStatsReportInterval"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/lb/v1/g;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->o:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Servers"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/lb/v1/g;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/lb/v1/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/lb/v1/g;->q:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "IpAddress"

    const-string v4, "Port"

    const-string v5, "Drop"

    filled-new-array {v3, v4, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/lb/v1/g;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/lb/v1/g;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
