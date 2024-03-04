.class public final Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/speech/v1beta1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;,
        Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

.field public static final ENCODING_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x3

.field public static final MAX_ALTERNATIVES_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1beta1/RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFANITY_FILTER_FIELD_NUMBER:I = 0x5

.field public static final SAMPLE_RATE_FIELD_NUMBER:I = 0x2

.field public static final SPEECH_CONTEXT_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private encoding_:I

.field private volatile languageCode_:Ljava/lang/Object;

.field private maxAlternatives_:I

.field private memoizedIsInitialized:B

.field private profanityFilter_:Z

.field private sampleRate_:I

.field private speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    .line 8
    iput v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->sampleRate_:I

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    .line 10
    iput v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->maxAlternatives_:I

    .line 11
    iput-boolean v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->profanityFilter_:Z

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
    iput-byte p1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1beta1/RecognitionConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;-><init>()V

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0x8

    if-eq v2, v4, :cond_7

    const/16 v4, 0x10

    if-eq v2, v4, :cond_6

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x20

    if-eq v2, v4, :cond_4

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {v3}, Lcom/google/cloud/speech/v1beta1/SpeechContext;->toBuilder()Lcom/google/cloud/speech/v1beta1/SpeechContext$b;

    move-result-object v2

    .line 19
    :cond_2
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/SpeechContext;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 20
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/cloud/speech/v1beta1/SpeechContext;

    iput-object v3, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v2, v3}, Lcom/google/cloud/speech/v1beta1/SpeechContext$b;->e0(Lcom/google/cloud/speech/v1beta1/SpeechContext;)Lcom/google/cloud/speech/v1beta1/SpeechContext$b;

    .line 22
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1beta1/SpeechContext$b;->Y()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v2

    iput-object v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->profanityFilter_:Z

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->maxAlternatives_:I

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 26
    iput-object v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->sampleRate_:I

    goto :goto_0

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 29
    iput v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 34
    throw p1

    .line 35
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1beta1/RecognitionConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

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

.method static synthetic access$400(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)I
    .locals 0

    iget p0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    return p0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->sampleRate_:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->maxAlternatives_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->profanityFilter_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;Lcom/google/cloud/speech/v1beta1/SpeechContext;)Lcom/google/cloud/speech/v1beta1/SpeechContext;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1beta1/d;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;->d0(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1beta1/RecognitionConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    .line 4
    iget v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    iget v2, p1, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSampleRate()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getMaxAlternatives()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getMaxAlternatives()I

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getProfanityFilter()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getProfanityFilter()Z

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->hasSpeechContext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->hasSpeechContext()Z

    move-result v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 10
    :goto_5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->hasSpeechContext()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    .line 11
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSpeechContext()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSpeechContext()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/cloud/speech/v1beta1/SpeechContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    .line 2
    invoke-static {v0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;->valueOf(I)Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;->UNRECOGNIZED:Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;

    :cond_0
    return-object v0
.end method

.method public getEncodingValue()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMaxAlternatives()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->maxAlternatives_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1beta1/RecognitionConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getProfanityFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->profanityFilter_:Z

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->sampleRate_:I

    return v0
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
    iget v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    sget-object v2, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;->ENCODING_UNSPECIFIED:Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;

    .line 3
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->sampleRate_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 6
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 8
    iget-object v2, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->maxAlternatives_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->profanityFilter_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 14
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSpeechContext()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

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

.method public getSpeechContext()Lcom/google/cloud/speech/v1beta1/SpeechContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/SpeechContext;->getDefaultInstance()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSpeechContextOrBuilder()Lcom/google/cloud/speech/v1beta1/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSpeechContext()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasSpeechContext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

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
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSampleRate()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getMaxAlternatives()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getProfanityFilter()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->hasSpeechContext()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSpeechContext()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/speech/v1beta1/SpeechContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
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
    sget-object v0, Lcom/google/cloud/speech/v1beta1/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    const-class v2, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->newBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1beta1/RecognitionConfig$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->newBuilderForType()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->newBuilderForType()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1beta1/RecognitionConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;-><init>(Lcom/google/cloud/speech/v1beta1/RecognitionConfig$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;-><init>(Lcom/google/cloud/speech/v1beta1/RecognitionConfig$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;->d0(Lcom/google/cloud/speech/v1beta1/RecognitionConfig;)Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->toBuilder()Lcom/google/cloud/speech/v1beta1/RecognitionConfig$b;

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
    iget v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    sget-object v1, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;->ENCODING_UNSPECIFIED:Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;

    .line 2
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig$AudioEncoding;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    iget v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->encoding_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->sampleRate_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v1, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->languageCode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->maxAlternatives_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->profanityFilter_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->speechContext_:Lcom/google/cloud/speech/v1beta1/SpeechContext;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1beta1/RecognitionConfig;->getSpeechContext()Lcom/google/cloud/speech/v1beta1/SpeechContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
