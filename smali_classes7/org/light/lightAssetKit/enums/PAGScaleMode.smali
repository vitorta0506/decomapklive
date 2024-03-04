.class public final enum Lorg/light/lightAssetKit/enums/PAGScaleMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/PAGScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field public static final enum LetterBox:Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field public static final enum None:Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field public static final enum Stretch:Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field public static final enum Zoom:Lorg/light/lightAssetKit/enums/PAGScaleMode;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/lightAssetKit/enums/PAGScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/PAGScaleMode;->None:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v3, "Stretch"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/lightAssetKit/enums/PAGScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/PAGScaleMode;->Stretch:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v5, "LetterBox"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/light/lightAssetKit/enums/PAGScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/lightAssetKit/enums/PAGScaleMode;->LetterBox:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v7, "Zoom"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/light/lightAssetKit/enums/PAGScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/light/lightAssetKit/enums/PAGScaleMode;->Zoom:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/light/lightAssetKit/enums/PAGScaleMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/light/lightAssetKit/enums/PAGScaleMode;->$VALUES:[Lorg/light/lightAssetKit/enums/PAGScaleMode;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/PAGScaleMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/PAGScaleMode;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/PAGScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/PAGScaleMode;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/PAGScaleMode;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/PAGScaleMode;->$VALUES:[Lorg/light/lightAssetKit/enums/PAGScaleMode;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/PAGScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/PAGScaleMode;

    return-object v0
.end method
