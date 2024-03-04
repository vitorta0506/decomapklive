.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

.field public static final OP_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private op_:I

.field private value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 13
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32$b;

    move-result-object v2

    .line 15
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32$b;

    .line 17
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 19
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 21
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 25
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    return p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    return p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->hasValue()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    return-object v0
.end method

.method public getOp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;

    :cond_0
    return-object v0
.end method

.method public getOpValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->PARSER:Lcom/google/protobuf/e2;

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
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;->EQ:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValueOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/l0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;->EQ:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter$Op;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->op_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->value_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/ComparisonFilter;->getValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeUInt32;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
