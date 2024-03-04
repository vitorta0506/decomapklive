.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$HostIdentifierCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

.field public static final ENDPOINT_FIELD_NUMBER:I = 0x1

.field public static final ENDPOINT_NAME_FIELD_NUMBER:I = 0x5

.field public static final HEALTH_STATUS_FIELD_NUMBER:I = 0x2

.field public static final LOAD_BALANCING_WEIGHT_FIELD_NUMBER:I = 0x4

.field public static final METADATA_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private healthStatus_:I

.field private hostIdentifierCase_:I

.field private hostIdentifier_:Ljava/lang/Object;

.field private loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, -0x1

    .line 8
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->memoizedIsInitialized:B

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

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

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x10

    if-eq v2, v4, :cond_6

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 16
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    .line 17
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 20
    :cond_3
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 22
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 23
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    move-result-object v5

    .line 25
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    .line 27
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 29
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    goto :goto_0

    .line 30
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    if-ne v2, v3, :cond_8

    .line 31
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint$b;

    move-result-object v5

    .line 32
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 33
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint$b;

    .line 34
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    .line 35
    :cond_9
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 37
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 41
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    return p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    return p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    return p1
.end method

.method static synthetic access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/b;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasMetadata()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasLoadBalancingWeight()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasLoadBalancingWeight()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasLoadBalancingWeight()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getHostIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$HostIdentifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getHostIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$HostIdentifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 14
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    if-eq v1, v0, :cond_9

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    goto :goto_0

    .line 15
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getEndpointName()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getEndpointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 17
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 19
    :cond_a
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    return-object v0
.end method

.method public getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointName()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getEndpointNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEndpointOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getHealthStatus()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;

    :cond_0
    return-object v0
.end method

.method public getHealthStatusValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    return v0
.end method

.method public getHostIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$HostIdentifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$HostIdentifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$HostIdentifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoadBalancingWeightOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/d0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->PARSER:Lcom/google/protobuf/e2;

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
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    .line 7
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasEndpoint()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEndpointName()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoadBalancingWeight()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hasLoadBalancingWeight()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getEndpointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint$c;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/Endpoint;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->healthStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/LbEndpoint;->hostIdentifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
