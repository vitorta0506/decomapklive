.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

.field public static final EXCLUDE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUSES_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J

.field private static final statuses_converter_:Lcom/google/protobuf/u0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$h$a<",
            "Ljava/lang/Integer;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exclude_:Z

.field private memoizedIsInitialized:B

.field private statusesMemoizedSerializedSize:I

.field private statuses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_converter_:Lcom/google/protobuf/u0$h$a;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    .line 3
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$b;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$b;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_9

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->exclude_:Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v4

    .line 15
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->q(I)I

    move-result v4

    .line 16
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v5

    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_3

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 19
    :cond_3
    iget-object v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_6

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 23
    :cond_6
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 24
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 25
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 27
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    .line 28
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_a

    .line 30
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    .line 31
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->exclude_:Z

    return p1
.end method

.method static synthetic access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/protobuf/u0$h$a;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_converter_:Lcom/google/protobuf/u0$h$a;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    iget-object v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getExclude()Z

    move-result v1

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getExclude()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object v0
.end method

.method public getExclude()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->exclude_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    .line 4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getStatusesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statusesMemoizedSerializedSize:I

    .line 8
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->exclude_:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStatuses(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
    .locals 2

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_converter_:Lcom/google/protobuf/u0$h$a;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$h$a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p1
.end method

.method public getStatusesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatusesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/u0$h;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_converter_:Lcom/google/protobuf/u0$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/u0$h;-><init>(Ljava/util/List;Lcom/google/protobuf/u0$h$a;)V

    return-object v0
.end method

.method public getStatusesValue(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getStatusesValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getStatusesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getExclude()Z

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

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
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getStatusesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statusesMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->statuses_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->exclude_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
