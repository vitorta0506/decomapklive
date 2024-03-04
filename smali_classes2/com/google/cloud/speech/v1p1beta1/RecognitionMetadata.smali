.class public final Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/speech/v1p1beta1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;,
        Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;,
        Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;,
        Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;,
        Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;
    }
.end annotation


# static fields
.field public static final AUDIO_TOPIC_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

.field public static final INDUSTRY_NAICS_CODE_OF_AUDIO_FIELD_NUMBER:I = 0x3

.field public static final INTERACTION_TYPE_FIELD_NUMBER:I = 0x1

.field public static final MICROPHONE_DISTANCE_FIELD_NUMBER:I = 0x4

.field public static final OBFUSCATED_ID_FIELD_NUMBER:I = 0x9

.field public static final ORIGINAL_MEDIA_TYPE_FIELD_NUMBER:I = 0x5

.field public static final ORIGINAL_MIME_TYPE_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORDING_DEVICE_NAME_FIELD_NUMBER:I = 0x7

.field public static final RECORDING_DEVICE_TYPE_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile audioTopic_:Ljava/lang/Object;

.field private industryNaicsCodeOfAudio_:I

.field private interactionType_:I

.field private memoizedIsInitialized:B

.field private microphoneDistance_:I

.field private obfuscatedId_:J

.field private originalMediaType_:I

.field private volatile originalMimeType_:Ljava/lang/Object;

.field private volatile recordingDeviceName_:Ljava/lang/Object;

.field private recordingDeviceType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    .line 2
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    .line 8
    iput v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    .line 9
    iput v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    .line 10
    iput v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/16 v4, 0x8

    if-eq v2, v4, :cond_9

    const/16 v4, 0x18

    if-eq v2, v4, :cond_8

    const/16 v4, 0x20

    if-eq v2, v4, :cond_7

    const/16 v4, 0x28

    if-eq v2, v4, :cond_6

    const/16 v4, 0x30

    if-eq v2, v4, :cond_5

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x42

    if-eq v2, v4, :cond_3

    const/16 v4, 0x48

    if-eq v2, v4, :cond_2

    const/16 v4, 0x52

    if-eq v2, v4, :cond_1

    .line 18
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->obfuscatedId_:J

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 27
    iput v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 29
    iput v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 31
    iput v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    goto :goto_0

    .line 32
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->industryNaicsCodeOfAudio_:I

    goto :goto_0

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 34
    iput v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_a
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 39
    throw p1

    .line 40
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->obfuscatedId_:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)I
    .locals 0

    iget p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    return p0
.end method

.method static synthetic access$402(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->industryNaicsCodeOfAudio_:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)I
    .locals 0

    iget p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    return p0
.end method

.method static synthetic access$602(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)I
    .locals 0

    iget p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    return p0
.end method

.method static synthetic access$702(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)I
    .locals 0

    iget p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    return p0
.end method

.method static synthetic access$802(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/j;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;->d0(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    .line 4
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    iget v2, p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getIndustryNaicsCodeOfAudio()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getIndustryNaicsCodeOfAudio()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    iget v2, p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    if-eq v1, v2, :cond_4

    return v3

    .line 7
    :cond_4
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    iget v2, p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    if-eq v1, v2, :cond_5

    return v3

    .line 8
    :cond_5
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    iget v2, p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    if-eq v1, v2, :cond_6

    return v3

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getRecordingDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getRecordingDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getOriginalMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getOriginalMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getObfuscatedId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getObfuscatedId()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_9

    return v3

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getAudioTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getAudioTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public getAudioTopic()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAudioTopicBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getDefaultInstanceForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getIndustryNaicsCodeOfAudio()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->industryNaicsCodeOfAudio_:I

    return v0
.end method

.method public getInteractionType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    .line 2
    invoke-static {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;->valueOf(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;

    :cond_0
    return-object v0
.end method

.method public getInteractionTypeValue()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    return v0
.end method

.method public getMicrophoneDistance()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    .line 2
    invoke-static {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;->valueOf(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;

    :cond_0
    return-object v0
.end method

.method public getMicrophoneDistanceValue()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    return v0
.end method

.method public getObfuscatedId()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->obfuscatedId_:J

    return-wide v0
.end method

.method public getOriginalMediaType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    .line 2
    invoke-static {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;->valueOf(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;

    :cond_0
    return-object v0
.end method

.method public getOriginalMediaTypeValue()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    return v0
.end method

.method public getOriginalMimeType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginalMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

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
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRecordingDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRecordingDeviceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRecordingDeviceType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    .line 2
    invoke-static {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;->valueOf(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;

    :cond_0
    return-object v0
.end method

.method public getRecordingDeviceTypeValue()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    return v0
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
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    sget-object v2, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;->INTERACTION_TYPE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;

    .line 3
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->industryNaicsCodeOfAudio_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 6
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    sget-object v2, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;->MICROPHONE_DISTANCE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;

    .line 8
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    .line 9
    iget v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    sget-object v2, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;->ORIGINAL_MEDIA_TYPE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;

    .line 11
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 12
    iget v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    sget-object v2, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;->RECORDING_DEVICE_TYPE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;

    .line 14
    invoke-virtual {v2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x6

    .line 15
    iget v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    .line 17
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    .line 19
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    iget-wide v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->obfuscatedId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v3, 0x9

    .line 21
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    .line 23
    iget-object v2, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
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
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getIndustryNaicsCodeOfAudio()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 5
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 6
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 7
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getRecordingDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getOriginalMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getObfuscatedId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->getAudioTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/j;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    const-class v2, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->newBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->newBuilderForType()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    invoke-direct {p1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->DEFAULT_INSTANCE:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;-><init>(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;-><init>(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;->d0(Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;)Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->toBuilder()Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$b;

    move-result-object v0

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
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;->INTERACTION_TYPE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;

    .line 2
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$InteractionType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->interactionType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->industryNaicsCodeOfAudio_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;->MICROPHONE_DISTANCE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;

    .line 7
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$MicrophoneDistance;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    .line 8
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->microphoneDistance_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 9
    :cond_2
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;->ORIGINAL_MEDIA_TYPE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;

    .line 10
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$OriginalMediaType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x5

    .line 11
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMediaType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 12
    :cond_3
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    sget-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;->RECORDING_DEVICE_TYPE_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;

    .line 13
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata$RecordingDeviceType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x6

    .line 14
    iget v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    .line 16
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->recordingDeviceName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    .line 18
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->originalMimeType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19
    :cond_6
    iget-wide v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->obfuscatedId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v2, 0x9

    .line 20
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xa

    .line 22
    iget-object v1, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionMetadata;->audioTopic_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
