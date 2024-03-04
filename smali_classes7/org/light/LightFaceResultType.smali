.class public final enum Lorg/light/LightFaceResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/LightFaceResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectDirectionError:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectFailed:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectMaxFaceCountError:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectMinFaceCountError:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectMinFaceSizeError:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectNoFace:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectPositionError:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectQualified:Lorg/light/LightFaceResultType;

.field public static final enum LightFaceDetectSensitivePersonError:Lorg/light/LightFaceResultType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lorg/light/LightFaceResultType;

    const-string v1, "LightFaceDetectQualified"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/LightFaceResultType;->LightFaceDetectQualified:Lorg/light/LightFaceResultType;

    .line 2
    new-instance v1, Lorg/light/LightFaceResultType;

    const-string v3, "LightFaceDetectFailed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/LightFaceResultType;->LightFaceDetectFailed:Lorg/light/LightFaceResultType;

    .line 3
    new-instance v3, Lorg/light/LightFaceResultType;

    const-string v5, "LightFaceDetectNoFace"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/LightFaceResultType;->LightFaceDetectNoFace:Lorg/light/LightFaceResultType;

    .line 4
    new-instance v5, Lorg/light/LightFaceResultType;

    const-string v7, "LightFaceDetectSensitivePersonError"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/light/LightFaceResultType;->LightFaceDetectSensitivePersonError:Lorg/light/LightFaceResultType;

    .line 5
    new-instance v7, Lorg/light/LightFaceResultType;

    const-string v9, "LightFaceDetectPositionError"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/light/LightFaceResultType;->LightFaceDetectPositionError:Lorg/light/LightFaceResultType;

    .line 6
    new-instance v9, Lorg/light/LightFaceResultType;

    const-string v11, "LightFaceDetectDirectionError"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/light/LightFaceResultType;->LightFaceDetectDirectionError:Lorg/light/LightFaceResultType;

    .line 7
    new-instance v11, Lorg/light/LightFaceResultType;

    const-string v13, "LightFaceDetectMinFaceSizeError"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/light/LightFaceResultType;->LightFaceDetectMinFaceSizeError:Lorg/light/LightFaceResultType;

    .line 8
    new-instance v13, Lorg/light/LightFaceResultType;

    const-string v15, "LightFaceDetectMinFaceCountError"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/light/LightFaceResultType;->LightFaceDetectMinFaceCountError:Lorg/light/LightFaceResultType;

    .line 9
    new-instance v15, Lorg/light/LightFaceResultType;

    const-string v14, "LightFaceDetectMaxFaceCountError"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lorg/light/LightFaceResultType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/light/LightFaceResultType;->LightFaceDetectMaxFaceCountError:Lorg/light/LightFaceResultType;

    const/16 v14, 0x9

    new-array v14, v14, [Lorg/light/LightFaceResultType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lorg/light/LightFaceResultType;->$VALUES:[Lorg/light/LightFaceResultType;

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
    iput p3, p0, Lorg/light/LightFaceResultType;->value:I

    return-void
.end method

.method private getValue()I
    .locals 1

    iget v0, p0, Lorg/light/LightFaceResultType;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/LightFaceResultType;
    .locals 1

    const-class v0, Lorg/light/LightFaceResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/LightFaceResultType;

    return-object p0
.end method

.method public static values()[Lorg/light/LightFaceResultType;
    .locals 1

    sget-object v0, Lorg/light/LightFaceResultType;->$VALUES:[Lorg/light/LightFaceResultType;

    invoke-virtual {v0}, [Lorg/light/LightFaceResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/LightFaceResultType;

    return-object v0
.end method
