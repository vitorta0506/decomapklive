.class public final Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/reflection/v1alpha/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;,
        Lio/grpc/reflection/v1alpha/ServerReflectionRequest$MessageRequestCase;
    }
.end annotation


# static fields
.field public static final ALL_EXTENSION_NUMBERS_OF_TYPE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

.field public static final FILE_BY_FILENAME_FIELD_NUMBER:I = 0x3

.field public static final FILE_CONTAINING_EXTENSION_FIELD_NUMBER:I = 0x5

.field public static final FILE_CONTAINING_SYMBOL_FIELD_NUMBER:I = 0x4

.field public static final HOST_FIELD_NUMBER:I = 0x1

.field public static final LIST_SERVICES_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/reflection/v1alpha/ServerReflectionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile host_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private messageRequestCase_:I

.field private messageRequest_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    invoke-direct {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;-><init>()V

    sput-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->DEFAULT_INSTANCE:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    .line 2
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;

    invoke-direct {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;-><init>()V

    sput-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

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
    iput p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_6

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x32

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    .line 16
    iput v3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    .line 17
    iput-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    .line 19
    iput v3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    .line 20
    iput-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 21
    iget v3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 22
    iget-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/reflection/v1alpha/ExtensionRequest;

    invoke-virtual {v2}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->toBuilder()Lio/grpc/reflection/v1alpha/ExtensionRequest$b;

    move-result-object v2

    .line 23
    :cond_4
    invoke-static {}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 24
    check-cast v3, Lio/grpc/reflection/v1alpha/ExtensionRequest;

    invoke-virtual {v2, v3}, Lio/grpc/reflection/v1alpha/ExtensionRequest$b;->g0(Lio/grpc/reflection/v1alpha/ExtensionRequest;)Lio/grpc/reflection/v1alpha/ExtensionRequest$b;

    .line 25
    invoke-virtual {v2}, Lio/grpc/reflection/v1alpha/ExtensionRequest$b;->Y()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    .line 26
    :cond_5
    iput v4, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    goto :goto_0

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 28
    iput v3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    .line 29
    iput-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 31
    iput v3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    .line 32
    iput-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 40
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
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

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;I)I
    .locals 0

    iput p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    return p1
.end method

.method static synthetic access$700(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

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

.method public static getDefaultInstance()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1

    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->DEFAULT_INSTANCE:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/reflection/v1alpha/f;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->DEFAULT_INSTANCE:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    invoke-virtual {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->toBuilder()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->DEFAULT_INSTANCE:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    invoke-virtual {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->toBuilder()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/reflection/v1alpha/ServerReflectionRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    .line 4
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getMessageRequestCase()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$MessageRequestCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getMessageRequestCase()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$MessageRequestCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 7
    :cond_3
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    const/4 v3, 0x6

    if-eq v1, v3, :cond_5

    const/4 v3, 0x7

    if-eq v1, v3, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getListServices()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getListServices()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getAllExtensionNumbersOfType()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getAllExtensionNumbersOfType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileContainingExtension()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileContainingExtension()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileContainingSymbol()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileContainingSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 16
    :cond_8
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileByFilename()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileByFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 18
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getAllExtensionNumbersOfType()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getAllExtensionNumbersOfTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getDefaultInstanceForType()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getDefaultInstanceForType()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->DEFAULT_INSTANCE:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    return-object v0
.end method

.method public getFileByFilename()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getFileByFilenameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFileContainingExtension()Lio/grpc/reflection/v1alpha/ExtensionRequest;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/ExtensionRequest;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFileContainingExtensionOrBuilder()Lio/grpc/reflection/v1alpha/c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/ExtensionRequest;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFileContainingSymbol()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getFileContainingSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getListServices()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getListServicesBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMessageRequestCase()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$MessageRequestCase;
    .locals 1

    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    invoke-static {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$MessageRequestCase;->forNumber(I)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$MessageRequestCase;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/reflection/v1alpha/ServerReflectionRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 9
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/reflection/v1alpha/ExtensionRequest;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 12
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 14
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

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

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAllExtensionNumbersOfType()Z
    .locals 2

    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileByFilename()Z
    .locals 2

    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileContainingExtension()Z
    .locals 2

    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileContainingSymbol()Z
    .locals 2

    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListServices()Z
    .locals 2

    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

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
    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getListServices()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getAllExtensionNumbersOfType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileContainingExtension()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileContainingSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileByFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
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
    sget-object v0, Lio/grpc/reflection/v1alpha/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    const-class v2, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->newBuilderForType()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->newBuilderForType()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->newBuilder()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    invoke-direct {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->toBuilder()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->toBuilder()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->DEFAULT_INSTANCE:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    invoke-direct {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;-><init>(Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    invoke-direct {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;-><init>(Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

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
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->host_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/ExtensionRequest;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequestCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->messageRequest_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
