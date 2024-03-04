.class public final enum Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioSourceCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

.field public static final enum AUDIOSOURCE_NOT_SET:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

.field public static final enum CONTENT:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

.field public static final enum URI:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    const-string v1, "CONTENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->CONTENT:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    .line 2
    new-instance v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    const-string v4, "URI"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->URI:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    .line 3
    new-instance v4, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    const-string v6, "AUDIOSOURCE_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->AUDIOSOURCE_NOT_SET:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->$VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

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
    iput p3, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;
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
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->URI:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->CONTENT:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->AUDIOSOURCE_NOT_SET:Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->forNumber(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;
    .locals 1

    .line 1
    const-class v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    return-object p0
.end method

.method public static values()[Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->$VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    invoke-virtual {v0}, [Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionAudio$AudioSourceCase;->value:I

    return v0
.end method
