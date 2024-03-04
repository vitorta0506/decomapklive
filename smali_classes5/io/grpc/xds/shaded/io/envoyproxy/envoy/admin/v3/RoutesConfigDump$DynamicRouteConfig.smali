.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicRouteConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;
    }
.end annotation


# static fields
.field public static final CLIENT_STATUS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

.field public static final ERROR_STATE_FIELD_NUMBER:I = 0x4

.field public static final LAST_UPDATED_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTE_CONFIG_FIELD_NUMBER:I = 0x2

.field public static final VERSION_INFO_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private clientStatus_:I

.field private errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

.field private lastUpdated_:Lcom/google/protobuf/Timestamp;

.field private memoizedIsInitialized:B

.field private routeConfig_:Lcom/google/protobuf/Any;

.field private volatile versionInfo_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_6

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    const/16 v4, 0x28

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 15
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;

    move-result-object v5

    .line 18
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;

    .line 20
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    goto :goto_0

    .line 21
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 23
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 24
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 25
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 26
    :cond_6
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    if-eqz v2, :cond_7

    .line 27
    invoke-virtual {v2}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$b;

    move-result-object v5

    .line 28
    :cond_7
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Any;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Any$b;->d0(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    .line 30
    invoke-virtual {v5}, Lcom/google/protobuf/Any$b;->Y()Lcom/google/protobuf/Any;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    goto/16 :goto_0

    .line 31
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 34
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 38
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    return-object p1
.end method

.method static synthetic access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    return p0
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    return p1
.end method

.method static synthetic access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getVersionInfo()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getVersionInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasRouteConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasRouteConfig()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasRouteConfig()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getRouteConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getRouteConfig()Lcom/google/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasLastUpdated()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasLastUpdated()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasLastUpdated()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getLastUpdated()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getLastUpdated()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasErrorState()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasErrorState()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasErrorState()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    if-eq v1, v3, :cond_9

    return v2

    .line 19
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getClientStatus()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    :cond_0
    return-object v0
.end method

.method public getClientStatusValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    return-object v0
.end method

.method public getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getErrorStateOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdated()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastUpdatedOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getLastUpdated()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRouteConfig()Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRouteConfigOrBuilder()Lcom/google/protobuf/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getRouteConfig()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getRouteConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getLastUpdated()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 11
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    .line 12
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersionInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasErrorState()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastUpdated()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRouteConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getVersionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasRouteConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getRouteConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasLastUpdated()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getLastUpdated()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->hasErrorState()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->versionInfo_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->routeConfig_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getRouteConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->lastUpdated_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getLastUpdated()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->errorState_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$DynamicRouteConfig;->clientStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
