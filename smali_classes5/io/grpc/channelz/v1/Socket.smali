.class public final Lio/grpc/channelz/v1/Socket;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/channelz/v1/Socket$b;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Socket;

.field public static final LOCAL_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_FIELD_NUMBER:I = 0x1

.field public static final REMOTE_FIELD_NUMBER:I = 0x4

.field public static final REMOTE_NAME_FIELD_NUMBER:I = 0x6

.field public static final SECURITY_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private data_:Lio/grpc/channelz/v1/SocketData;

.field private local_:Lio/grpc/channelz/v1/Address;

.field private memoizedIsInitialized:B

.field private ref_:Lio/grpc/channelz/v1/SocketRef;

.field private volatile remoteName_:Ljava/lang/Object;

.field private remote_:Lio/grpc/channelz/v1/Address;

.field private security_:Lio/grpc/channelz/v1/Security;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/Socket;

    invoke-direct {v0}, Lio/grpc/channelz/v1/Socket;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/Socket;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Socket;

    .line 2
    new-instance v0, Lio/grpc/channelz/v1/Socket$a;

    invoke-direct {v0}, Lio/grpc/channelz/v1/Socket$a;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/channelz/v1/Socket;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/channelz/v1/Socket;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/Socket$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/Socket;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/channelz/v1/Socket;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_a

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 14
    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v2, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lio/grpc/channelz/v1/Security;->toBuilder()Lio/grpc/channelz/v1/Security$c;

    move-result-object v5

    .line 17
    :cond_3
    invoke-static {}, Lio/grpc/channelz/v1/Security;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/channelz/v1/Security;

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

    if-eqz v5, :cond_0

    .line 18
    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/Security$c;->g0(Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Security$c;

    .line 19
    invoke-virtual {v5}, Lio/grpc/channelz/v1/Security$c;->Y()Lio/grpc/channelz/v1/Security;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

    goto :goto_0

    .line 20
    :cond_4
    iget-object v2, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v2}, Lio/grpc/channelz/v1/Address;->toBuilder()Lio/grpc/channelz/v1/Address$c;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/grpc/channelz/v1/Address;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/channelz/v1/Address;

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/Address$c;->g0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address$c;

    .line 24
    invoke-virtual {v5}, Lio/grpc/channelz/v1/Address$c;->Y()Lio/grpc/channelz/v1/Address;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    goto :goto_0

    .line 25
    :cond_6
    iget-object v2, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    if-eqz v2, :cond_7

    .line 26
    invoke-virtual {v2}, Lio/grpc/channelz/v1/Address;->toBuilder()Lio/grpc/channelz/v1/Address$c;

    move-result-object v5

    .line 27
    :cond_7
    invoke-static {}, Lio/grpc/channelz/v1/Address;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/channelz/v1/Address;

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/Address$c;->g0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address$c;

    .line 29
    invoke-virtual {v5}, Lio/grpc/channelz/v1/Address$c;->Y()Lio/grpc/channelz/v1/Address;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    goto/16 :goto_0

    .line 30
    :cond_8
    iget-object v2, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    if-eqz v2, :cond_9

    .line 31
    invoke-virtual {v2}, Lio/grpc/channelz/v1/SocketData;->toBuilder()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v5

    .line 32
    :cond_9
    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/channelz/v1/SocketData;

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/SocketData$b;->i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

    .line 34
    invoke-virtual {v5}, Lio/grpc/channelz/v1/SocketData$b;->Y()Lio/grpc/channelz/v1/SocketData;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    goto/16 :goto_0

    .line 35
    :cond_a
    iget-object v2, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;

    if-eqz v2, :cond_b

    .line 36
    invoke-virtual {v2}, Lio/grpc/channelz/v1/SocketRef;->toBuilder()Lio/grpc/channelz/v1/SocketRef$b;

    move-result-object v5

    .line 37
    :cond_b
    invoke-static {}, Lio/grpc/channelz/v1/SocketRef;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/channelz/v1/SocketRef;

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/SocketRef$b;->g0(Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/SocketRef$b;

    .line 39
    invoke-virtual {v5}, Lio/grpc/channelz/v1/SocketRef$b;->Y()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 41
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 45
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/Socket$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/channelz/v1/Socket;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/channelz/v1/Socket;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/SocketRef;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Security;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/channelz/v1/Socket;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lio/grpc/channelz/v1/Socket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/channelz/v1/Socket;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/Socket;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Socket;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/Socket;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Socket;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/Socket;->toBuilder()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/channelz/v1/Socket;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/Socket;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Socket;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/Socket;->toBuilder()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/Socket$b;->h0(Lio/grpc/channelz/v1/Socket;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Socket;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/Socket;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/channelz/v1/Socket;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/channelz/v1/Socket;

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasRef()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasRef()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasRef()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRef()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getRef()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/SocketRef;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasData()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasData()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getData()Lio/grpc/channelz/v1/SocketData;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getData()Lio/grpc/channelz/v1/SocketData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/SocketData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasLocal()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasLocal()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasLocal()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getLocal()Lio/grpc/channelz/v1/Address;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getLocal()Lio/grpc/channelz/v1/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasRemote()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasRemote()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasRemote()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRemote()Lio/grpc/channelz/v1/Address;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getRemote()Lio/grpc/channelz/v1/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasSecurity()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasSecurity()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getSecurity()Lio/grpc/channelz/v1/Security;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getSecurity()Lio/grpc/channelz/v1/Security;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/Security;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRemoteName()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getRemoteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v3

    :cond_d
    return v0
.end method

.method public getData()Lio/grpc/channelz/v1/SocketData;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->getDefaultInstance()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataOrBuilder()Lio/grpc/channelz/v1/m;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getData()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getDefaultInstanceForType()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getDefaultInstanceForType()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/channelz/v1/Socket;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Socket;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Socket;

    return-object v0
.end method

.method public getLocal()Lio/grpc/channelz/v1/Address;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/Address;->getDefaultInstance()Lio/grpc/channelz/v1/Address;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalOrBuilder()Lio/grpc/channelz/v1/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getLocal()Lio/grpc/channelz/v1/Address;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/Socket;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/Socket;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRef()Lio/grpc/channelz/v1/SocketRef;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/SocketRef;->getDefaultInstance()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRefOrBuilder()Lio/grpc/channelz/v1/p;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRef()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v0

    return-object v0
.end method

.method public getRemote()Lio/grpc/channelz/v1/Address;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/Address;->getDefaultInstance()Lio/grpc/channelz/v1/Address;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRemoteOrBuilder()Lio/grpc/channelz/v1/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRemote()Lio/grpc/channelz/v1/Address;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity()Lio/grpc/channelz/v1/Security;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/Security;->getDefaultInstance()Lio/grpc/channelz/v1/Security;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSecurityOrBuilder()Lio/grpc/channelz/v1/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getSecurity()Lio/grpc/channelz/v1/Security;

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
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRef()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getData()Lio/grpc/channelz/v1/SocketData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getLocal()Lio/grpc/channelz/v1/Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRemote()Lio/grpc/channelz/v1/Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getSecurity()Lio/grpc/channelz/v1/Security;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 13
    iget-object v2, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
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

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocal()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRef()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemote()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSecurity()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

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
    invoke-static {}, Lio/grpc/channelz/v1/Socket;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasRef()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRef()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/SocketRef;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasData()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getData()Lio/grpc/channelz/v1/SocketData;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/SocketData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getLocal()Lio/grpc/channelz/v1/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasRemote()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRemote()Lio/grpc/channelz/v1/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getSecurity()Lio/grpc/channelz/v1/Security;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/Security;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRemoteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/Socket;

    const-class v2, Lio/grpc/channelz/v1/Socket$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/channelz/v1/Socket;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/channelz/v1/Socket;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->newBuilderForType()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->newBuilderForType()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/channelz/v1/Socket;->newBuilder()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/Socket$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/channelz/v1/Socket$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/channelz/v1/Socket$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/Socket$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/channelz/v1/Socket;

    invoke-direct {p1}, Lio/grpc/channelz/v1/Socket;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->toBuilder()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->toBuilder()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/channelz/v1/Socket$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Socket;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Socket;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/channelz/v1/Socket$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/Socket$b;-><init>(Lio/grpc/channelz/v1/Socket$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/channelz/v1/Socket$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/Socket$b;-><init>(Lio/grpc/channelz/v1/Socket$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/Socket$b;->h0(Lio/grpc/channelz/v1/Socket;)Lio/grpc/channelz/v1/Socket$b;

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
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->ref_:Lio/grpc/channelz/v1/SocketRef;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRef()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->data_:Lio/grpc/channelz/v1/SocketData;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getData()Lio/grpc/channelz/v1/SocketData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->local_:Lio/grpc/channelz/v1/Address;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getLocal()Lio/grpc/channelz/v1/Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->remote_:Lio/grpc/channelz/v1/Address;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getRemote()Lio/grpc/channelz/v1/Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->security_:Lio/grpc/channelz/v1/Security;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket;->getSecurity()Lio/grpc/channelz/v1/Security;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket;->remoteName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
