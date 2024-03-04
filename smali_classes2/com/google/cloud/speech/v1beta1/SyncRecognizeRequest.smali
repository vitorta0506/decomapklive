.class public final Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;
    }
.end annotation


# static fields
.field public static final AUDIO_FIELD_NUMBER:I = 0x2

.field public static final CONFIG_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

.field private config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->memoizedIsInitialized:B

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
    iput-byte p1, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;-><init>()V

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
    iget-object v2, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1beta1/RecognitionAudio;->toBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionAudio$c;

    move-result-object v5

    .line 14
    :cond_2
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/RecognitionAudio;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    iput-object v2, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v5, v2}, Lcom/google/cloud/speech/v1beta1/RecognitionAudio$c;->d0(Lcom/google/cloud/speech/v1beta1/RecognitionAudio;)Lcom/google/cloud/speech/v1beta1/RecognitionAudio$c;

    .line 17
    invoke-virtual {v5}, Lcom/google/cloud/speech/v1beta1/RecognitionAudio$c;->Y()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    move-result-object v2

    iput-object v2, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    goto :goto_0

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v5

    .line 20
    :cond_4
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    iput-object v2, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    if-eqz v5, :cond_0

    .line 22
    invoke-virtual {v5, v2}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;->d0(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    .line 23
    invoke-virtual {v5}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;->Y()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
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

    .line 24
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 28
    throw p1

    .line 29
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;Lcom/google/cloud/speech/v1beta1/RecognitionAudio;)Lcom/google/cloud/speech/v1beta1/RecognitionAudio;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1beta1/d;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->toBuilder()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->toBuilder()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;->g0(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasConfig()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasConfig()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasConfig()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getConfig()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getConfig()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasAudio()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasAudio()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 8
    :goto_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getAudio()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getAudio()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/cloud/speech/v1beta1/RecognitionAudio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 10
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

.method public getAudio()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/RecognitionAudio;->getDefaultInstance()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAudioOrBuilder()Lcom/google/cloud/speech/v1beta1/a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getAudio()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getDefaultInstance()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfigOrBuilder()Lcom/google/cloud/speech/v1beta1/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getConfig()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getConfig()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getAudio()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

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

.method public hasAudio()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConfig()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

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
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getConfig()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getAudio()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1beta1/RecognitionAudio;->hashCode()I

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
    sget-object v0, Lcom/google/cloud/speech/v1beta1/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    const-class v2, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->newBuilder()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->newBuilderForType()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->newBuilderForType()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;-><init>(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;-><init>(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;->g0(Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;)Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->toBuilder()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->toBuilder()Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest$b;

    move-result-object v0

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
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->config_:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getConfig()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->audio_:Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/SyncRecognizeRequest;->getAudio()Lcom/google/cloud/speech/v1beta1/RecognitionAudio;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
