.class public final Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;
    }
.end annotation


# static fields
.field public static final CONFIG_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

.field public static final NODE_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private config_:Lio/opencensus/proto/trace/v1/TraceConfig;

.field private memoizedIsInitialized:B

.field private node_:Lio/opencensus/proto/agent/common/v1/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    invoke-direct {v0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;-><init>()V

    sput-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    .line 2
    new-instance v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$a;

    invoke-direct {v0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->memoizedIsInitialized:B

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
    iput-byte p1, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;-><init>()V

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TraceConfig;->toBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v5

    .line 14
    :cond_2
    invoke-static {}, Lio/opencensus/proto/trace/v1/TraceConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/TraceConfig;

    iput-object v2, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->h0(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig$c;

    .line 16
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->Y()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v2, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Lio/opencensus/proto/agent/common/v1/Node;->toBuilder()Lio/opencensus/proto/agent/common/v1/Node$c;

    move-result-object v5

    .line 19
    :cond_4
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/Node;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/agent/common/v1/Node;

    iput-object v2, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v2}, Lio/opencensus/proto/agent/common/v1/Node$c;->i0(Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/common/v1/Node$c;

    .line 21
    invoke-virtual {v5}, Lio/opencensus/proto/agent/common/v1/Node$c;->Y()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 23
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 27
    throw p1

    .line 28
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/common/v1/Node;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;

    return-object p1
.end method

.method static synthetic access$502(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p1
.end method

.method static synthetic access$600(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1

    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/agent/trace/v1/a;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    invoke-virtual {v0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->toBuilder()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    invoke-virtual {v0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->toBuilder()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;->h0(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasNode()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasNode()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasNode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getNode()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getNode()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/agent/common/v1/Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasConfig()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasConfig()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/TraceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getConfig()Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/TraceConfig;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfigOrBuilder()Lio/opencensus/proto/trace/v1/h;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getDefaultInstanceForType()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getDefaultInstanceForType()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    return-object v0
.end method

.method public getNode()Lio/opencensus/proto/agent/common/v1/Node;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/agent/common/v1/Node;->getDefaultInstance()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNodeOrBuilder()Lio/opencensus/proto/agent/common/v1/c;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getNode()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getNode()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasConfig()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNode()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;

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
    invoke-static {}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasNode()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getNode()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/agent/common/v1/Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->hasConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TraceConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    const-class v2, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->newBuilderForType()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->newBuilderForType()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->newBuilder()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->toBuilder()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->toBuilder()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->DEFAULT_INSTANCE:Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;-><init>(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;-><init>(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;->h0(Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;)Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig$b;

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
    iget-object v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->node_:Lio/opencensus/proto/agent/common/v1/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getNode()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->config_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/agent/trace/v1/UpdatedLibraryConfig;->getConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
