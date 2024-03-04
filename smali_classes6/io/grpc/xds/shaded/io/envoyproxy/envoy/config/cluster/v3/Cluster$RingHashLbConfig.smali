.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RingHashLbConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

.field public static final HASH_FUNCTION_FIELD_NUMBER:I = 0x3

.field public static final MAXIMUM_RING_SIZE_FIELD_NUMBER:I = 0x4

.field public static final MINIMUM_RING_SIZE_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private hashFunction_:I

.field private maximumRingSize_:Lcom/google/protobuf/UInt64Value;

.field private memoizedIsInitialized:B

.field private minimumRingSize_:Lcom/google/protobuf/UInt64Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x18

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/google/protobuf/UInt64Value;->toBuilder()Lcom/google/protobuf/UInt64Value$b;

    move-result-object v5

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/protobuf/UInt64Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt64Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt64Value$b;->g0(Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value$b;

    .line 17
    invoke-virtual {v5}, Lcom/google/protobuf/UInt64Value$b;->Y()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 19
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    goto :goto_0

    .line 20
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v2}, Lcom/google/protobuf/UInt64Value;->toBuilder()Lcom/google/protobuf/UInt64Value$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/protobuf/UInt64Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt64Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt64Value$b;->g0(Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value$b;

    .line 24
    invoke-virtual {v5}, Lcom/google/protobuf/UInt64Value$b;->Y()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 26
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 30
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$7000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;

    return-object p1
.end method

.method static synthetic access$7300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    return p0
.end method

.method static synthetic access$7302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    return p1
.end method

.method static synthetic access$7402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    return-object p1
.end method

.method static synthetic access$7500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$7600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->q:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMinimumRingSize()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMinimumRingSize()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMinimumRingSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMinimumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMinimumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt64Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMaximumRingSize()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMaximumRingSize()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMaximumRingSize()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMaximumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMaximumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt64Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 13
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    return-object v0
.end method

.method public getHashFunction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;

    :cond_0
    return-object v0
.end method

.method public getHashFunctionValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    return v0
.end method

.method public getMaximumRingSize()Lcom/google/protobuf/UInt64Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt64Value;->getDefaultInstance()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaximumRingSizeOrBuilder()Lcom/google/protobuf/f3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMaximumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumRingSize()Lcom/google/protobuf/UInt64Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt64Value;->getDefaultInstance()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMinimumRingSizeOrBuilder()Lcom/google/protobuf/f3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMinimumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMinimumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;->XX_HASH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x3

    .line 5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMaximumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasMaximumRingSize()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMinimumRingSize()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMinimumRingSize()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMinimumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt64Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMaximumRingSize()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMaximumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt64Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->minimumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMinimumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;->XX_HASH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hashFunction_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->maximumRingSize_:Lcom/google/protobuf/UInt64Value;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMaximumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
