.class synthetic Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;->values()[Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$b;->a:[I

    :try_start_0
    sget-object v1, Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;->STREAMING_CONFIG:Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$b;->a:[I

    sget-object v1, Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;->AUDIO_CONTENT:Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$b;->a:[I

    sget-object v1, Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;->STREAMINGREQUEST_NOT_SET:Lcom/google/cloud/speech/v1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
