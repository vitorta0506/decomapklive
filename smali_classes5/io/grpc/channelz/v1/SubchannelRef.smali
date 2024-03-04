.class public final Lio/grpc/channelz/v1/SubchannelRef;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/channelz/v1/SubchannelRef$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SubchannelRef;

.field public static final NAME_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBCHANNEL_ID_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private subchannelId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/SubchannelRef;

    invoke-direct {v0}, Lio/grpc/channelz/v1/SubchannelRef;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/SubchannelRef;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SubchannelRef;

    .line 2
    new-instance v0, Lio/grpc/channelz/v1/SubchannelRef$a;

    invoke-direct {v0}, Lio/grpc/channelz/v1/SubchannelRef$a;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/channelz/v1/SubchannelRef;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/SubchannelRef$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/SubchannelRef;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/channelz/v1/SubchannelRef;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x38

    if-eq v2, v4, :cond_2

    const/16 v4, 0x42

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 14
    iput-object v2, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/channelz/v1/SubchannelRef;->subchannelId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 17
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 21
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/SubchannelRef$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/channelz/v1/SubchannelRef;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/grpc/channelz/v1/SubchannelRef;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/SubchannelRef;->subchannelId_:J

    return-wide p1
.end method

.method static synthetic access$500(Lio/grpc/channelz/v1/SubchannelRef;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/channelz/v1/SubchannelRef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/channelz/v1/SubchannelRef;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SubchannelRef;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SubchannelRef;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/SubchannelRef;->toBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SubchannelRef;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/SubchannelRef;->toBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/SubchannelRef$b;->g0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/channelz/v1/SubchannelRef;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/channelz/v1/SubchannelRef;

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->getSubchannelId()J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SubchannelRef;->getSubchannelId()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SubchannelRef;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v5

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v5

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->getDefaultInstanceForType()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->getDefaultInstanceForType()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SubchannelRef;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

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
            "Lio/grpc/channelz/v1/SubchannelRef;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->PARSER:Lcom/google/protobuf/e2;

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
    iget-wide v1, p0, Lio/grpc/channelz/v1/SubchannelRef;->subchannelId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v3, 0x7

    .line 3
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x8

    .line 5
    iget-object v2, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

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

.method public getSubchannelId()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->subchannelId_:J

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
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->getSubchannelId()J

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

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
    sget-object v0, Lio/grpc/channelz/v1/h;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/SubchannelRef;

    const-class v2, Lio/grpc/channelz/v1/SubchannelRef$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/channelz/v1/SubchannelRef;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->newBuilderForType()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SubchannelRef;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->newBuilderForType()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/channelz/v1/SubchannelRef$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->newBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/SubchannelRef$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/channelz/v1/SubchannelRef$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/channelz/v1/SubchannelRef$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/SubchannelRef$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/channelz/v1/SubchannelRef;

    invoke-direct {p1}, Lio/grpc/channelz/v1/SubchannelRef;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->toBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SubchannelRef;->toBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SubchannelRef;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SubchannelRef;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/channelz/v1/SubchannelRef$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/SubchannelRef$b;-><init>(Lio/grpc/channelz/v1/SubchannelRef$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/channelz/v1/SubchannelRef$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/SubchannelRef$b;-><init>(Lio/grpc/channelz/v1/SubchannelRef$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/SubchannelRef$b;->g0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

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
    iget-wide v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->subchannelId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    .line 2
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 4
    iget-object v1, p0, Lio/grpc/channelz/v1/SubchannelRef;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
