.class public final enum Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/RatingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StepSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

.field public static final enum Full:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

.field public static final enum Half:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;


# instance fields
.field step:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    const-string v1, "Half"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->Half:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    const-string v3, "Full"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->Full:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

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
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->step:I

    return-void
.end method

.method public static fromStep(I)Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->values()[Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->step:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;
    .locals 1

    const-class v0, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    return-object p0
.end method

.method public static values()[Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    invoke-virtual {v0}, [Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    return-object v0
.end method
