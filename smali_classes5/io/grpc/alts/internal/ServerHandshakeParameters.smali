.class public final Lio/grpc/alts/internal/ServerHandshakeParameters;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/ServerHandshakeParameters$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/alts/internal/ServerHandshakeParameters;

.field public static final LOCAL_IDENTITIES_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORD_PROTOCOLS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private localIdentities_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/alts/internal/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private recordProtocols_:Lcom/google/protobuf/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    invoke-direct {v0}, Lio/grpc/alts/internal/ServerHandshakeParameters;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/ServerHandshakeParameters;

    .line 2
    new-instance v0, Lio/grpc/alts/internal/ServerHandshakeParameters$a;

    invoke-direct {v0}, Lio/grpc/alts/internal/ServerHandshakeParameters$a;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/ServerHandshakeParameters$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/ServerHandshakeParameters;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v5, 0xa

    if-eq v3, v5, :cond_3

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 15
    :cond_2
    iget-object v3, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    .line 16
    invoke-static {}, Lio/grpc/alts/internal/Identity;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/alts/internal/Identity;

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_4

    .line 19
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 20
    :cond_4
    iget-object v4, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_6

    .line 24
    iget-object p2, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    :cond_6
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_7

    .line 25
    iget-object p2, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    .line 26
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_8
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_9

    .line 28
    iget-object p1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    :cond_9
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_a

    .line 29
    iget-object p1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    .line 30
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/alts/internal/ServerHandshakeParameters$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/alts/internal/ServerHandshakeParameters;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/alts/internal/ServerHandshakeParameters;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/alts/internal/ServerHandshakeParameters;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/alts/internal/ServerHandshakeParameters;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/alts/internal/ServerHandshakeParameters;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lio/grpc/alts/internal/ServerHandshakeParameters;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/r;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/ServerHandshakeParameters;

    invoke-virtual {v0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->toBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/alts/internal/ServerHandshakeParameters;)Lio/grpc/alts/internal/ServerHandshakeParameters$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/ServerHandshakeParameters;

    invoke-virtual {v0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->toBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/ServerHandshakeParameters$b;->k0(Lio/grpc/alts/internal/ServerHandshakeParameters;)Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/alts/internal/ServerHandshakeParameters;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/alts/internal/ServerHandshakeParameters;

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getLocalIdentitiesList()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getLocalIdentitiesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
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
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getDefaultInstanceForType()Lio/grpc/alts/internal/ServerHandshakeParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getDefaultInstanceForType()Lio/grpc/alts/internal/ServerHandshakeParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object v0
.end method

.method public getLocalIdentities(I)Lio/grpc/alts/internal/Identity;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/Identity;

    return-object p1
.end method

.method public getLocalIdentitiesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocalIdentitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/alts/internal/Identity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    return-object v0
.end method

.method public getLocalIdentitiesOrBuilder(I)Lio/grpc/alts/internal/v;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/v;

    return-object p1
.end method

.method public getLocalIdentitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/alts/internal/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRecordProtocols(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRecordProtocolsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRecordProtocolsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordProtocolsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRecordProtocolsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v0

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
    iget-object v3, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 5
    :goto_1
    iget-object v1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x2

    .line 6
    iget-object v3, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    .line 7
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 9
    iput v2, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v2
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
    invoke-static {}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getRecordProtocolsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getLocalIdentitiesCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->getLocalIdentitiesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

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
    sget-object v0, Lio/grpc/alts/internal/r;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/ServerHandshakeParameters;

    const-class v2, Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->newBuilderForType()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/ServerHandshakeParameters;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->newBuilderForType()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/alts/internal/ServerHandshakeParameters$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/alts/internal/ServerHandshakeParameters;->newBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/ServerHandshakeParameters$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/alts/internal/ServerHandshakeParameters$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/ServerHandshakeParameters$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/alts/internal/ServerHandshakeParameters;

    invoke-direct {p1}, Lio/grpc/alts/internal/ServerHandshakeParameters;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->toBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/ServerHandshakeParameters;->toBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/alts/internal/ServerHandshakeParameters;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/ServerHandshakeParameters;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/ServerHandshakeParameters$b;-><init>(Lio/grpc/alts/internal/ServerHandshakeParameters$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/ServerHandshakeParameters$b;-><init>(Lio/grpc/alts/internal/ServerHandshakeParameters$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/ServerHandshakeParameters$b;->k0(Lio/grpc/alts/internal/ServerHandshakeParameters;)Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    iget-object v1, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lio/grpc/alts/internal/ServerHandshakeParameters;->localIdentities_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
