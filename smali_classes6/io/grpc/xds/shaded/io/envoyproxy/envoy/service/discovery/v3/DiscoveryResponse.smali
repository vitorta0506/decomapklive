.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;
    }
.end annotation


# static fields
.field public static final CANARY_FIELD_NUMBER:I = 0x3

.field public static final CONTROL_PLANE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

.field public static final NONCE_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCES_FIELD_NUMBER:I = 0x2

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x4

.field public static final VERSION_INFO_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private canary_:Z

.field private controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

.field private memoizedIsInitialized:B

.field private volatile nonce_:Ljava/lang/Object;

.field private resources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private volatile typeUrl_:Ljava/lang/Object;

.field private volatile versionInfo_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_b

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6

    const/16 v5, 0x18

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x32

    if-eq v4, v5, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 16
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    if-eqz v5, :cond_2

    .line 17
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane$b;

    move-result-object v4

    .line 18
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane$b;

    .line 20
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 22
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 24
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->canary_:Z

    goto :goto_0

    :cond_6
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_7

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 27
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    .line 28
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Any;

    .line 29
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 31
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;
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

    .line 32
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 33
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 35
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    .line 36
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c

    .line 38
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    .line 39
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->canary_:Z

    return p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/c;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getVersionInfo()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getVersionInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getResourcesList()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getResourcesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getCanary()Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getCanary()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getNonce()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->hasControlPlane()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->hasControlPlane()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->hasControlPlane()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getControlPlane()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getControlPlane()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getCanary()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->canary_:Z

    return v0
.end method

.method public getControlPlane()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getControlPlaneOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/m;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getControlPlane()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNonceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResources(I)Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1
.end method

.method public getResourcesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    return-object v0
.end method

.method public getResourcesOrBuilder(I)Lcom/google/protobuf/f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/f;

    return-object p1
.end method

.method public getResourcesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    .line 6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->canary_:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 12
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getControlPlane()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersionInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasControlPlane()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getVersionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getResourcesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getResourcesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getCanary()Z

    move-result v1

    .line 7
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->hasControlPlane()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getControlPlane()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->versionInfo_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->resources_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->canary_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->typeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->nonce_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->controlPlane_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryResponse;->getControlPlane()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ControlPlane;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
