.class public final Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/Span$TimeEvent$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/Span$TimeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;
    }
.end annotation


# static fields
.field public static final COMPRESSED_SIZE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

.field public static final ID_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final UNCOMPRESSED_SIZE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private compressedSize_:J

.field private id_:J

.field private memoizedIsInitialized:B

.field private type_:I

.field private uncompressedSize_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    .line 2
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$a;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->id_:J

    .line 9
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->uncompressedSize_:J

    .line 10
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->compressedSize_:J

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
    iput-byte p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->compressedSize_:J

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->uncompressedSize_:J

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->id_:J

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 20
    iput v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I
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

    .line 21
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 22
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 26
    throw p1

    .line 27
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$4200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4400(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)I
    .locals 0

    iget p0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    return p0
.end method

.method static synthetic access$4402(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    return p1
.end method

.method static synthetic access$4502(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->id_:J

    return-wide p1
.end method

.method static synthetic access$4602(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->uncompressedSize_:J

    return-wide p1
.end method

.method static synthetic access$4702(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->compressedSize_:J

    return-wide p1
.end method

.method static synthetic access$4800(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$4900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;->g0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    .line 4
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    iget v2, p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getId()J

    move-result-wide v1

    .line 6
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getId()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getUncompressedSize()J

    move-result-wide v1

    .line 8
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getUncompressedSize()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getCompressedSize()J

    move-result-wide v1

    .line 10
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getCompressedSize()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->compressedSize_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->id_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    sget-object v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;->TYPE_UNSPECIFIED:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->id_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 6
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->uncompressedSize_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 8
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->compressedSize_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v3, 0x4

    .line 10
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;
    .locals 1

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;->valueOf(I)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;->UNRECOGNIZED:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    return v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->uncompressedSize_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
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
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getId()J

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getUncompressedSize()J

    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getCompressedSize()J

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    const-class v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->newBuilderForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->newBuilderForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->newBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/Span$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;-><init>(Lio/opencensus/proto/trace/v1/Span$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;-><init>(Lio/opencensus/proto/trace/v1/Span$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;->g0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    sget-object v1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;->TYPE_UNSPECIFIED:Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$Type;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->uncompressedSize_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->compressedSize_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
