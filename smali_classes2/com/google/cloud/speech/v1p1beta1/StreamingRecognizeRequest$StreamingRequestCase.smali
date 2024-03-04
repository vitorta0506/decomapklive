.class public final enum Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamingRequestCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

.field public static final enum AUDIO_CONTENT:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

.field public static final enum STREAMINGREQUEST_NOT_SET:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

.field public static final enum STREAMING_CONFIG:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    const-string v1, "STREAMING_CONFIG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->STREAMING_CONFIG:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    .line 2
    new-instance v1, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    const-string v4, "AUDIO_CONTENT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->AUDIO_CONTENT:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    .line 3
    new-instance v4, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    const-string v6, "STREAMINGREQUEST_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->STREAMINGREQUEST_NOT_SET:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->$VALUES:[Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->AUDIO_CONTENT:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->STREAMING_CONFIG:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->STREAMINGREQUEST_NOT_SET:Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->forNumber(I)Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;
    .locals 1

    .line 1
    const-class v0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    return-object p0
.end method

.method public static values()[Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->$VALUES:[Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    invoke-virtual {v0}, [Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/StreamingRecognizeRequest$StreamingRequestCase;->value:I

    return v0
.end method
