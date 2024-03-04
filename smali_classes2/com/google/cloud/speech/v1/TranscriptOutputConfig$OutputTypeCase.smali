.class public final enum Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1/TranscriptOutputConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

.field public static final enum GCS_URI:Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

.field public static final enum OUTPUTTYPE_NOT_SET:Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    const-string v1, "GCS_URI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->GCS_URI:Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    .line 2
    new-instance v1, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    const-string v4, "OUTPUTTYPE_NOT_SET"

    invoke-direct {v1, v4, v3, v2}, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->OUTPUTTYPE_NOT_SET:Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->$VALUES:[Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

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
    iput p3, p0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->GCS_URI:Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->OUTPUTTYPE_NOT_SET:Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->forNumber(I)Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;
    .locals 1

    .line 1
    const-class v0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    return-object p0
.end method

.method public static values()[Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->$VALUES:[Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    invoke-virtual {v0}, [Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/cloud/speech/v1/TranscriptOutputConfig$OutputTypeCase;->value:I

    return v0
.end method
