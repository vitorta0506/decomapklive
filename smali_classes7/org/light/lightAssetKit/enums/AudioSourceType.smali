.class public final enum Lorg/light/lightAssetKit/enums/AudioSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/AudioSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/AudioSourceType;

.field public static final enum BGM:Lorg/light/lightAssetKit/enums/AudioSourceType;

.field public static final enum Count:Lorg/light/lightAssetKit/enums/AudioSourceType;

.field public static final enum Effect:Lorg/light/lightAssetKit/enums/AudioSourceType;

.field public static final enum PAG:Lorg/light/lightAssetKit/enums/AudioSourceType;

.field public static final enum Video:Lorg/light/lightAssetKit/enums/AudioSourceType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/AudioSourceType;

    const-string v1, "BGM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/lightAssetKit/enums/AudioSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/AudioSourceType;->BGM:Lorg/light/lightAssetKit/enums/AudioSourceType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/AudioSourceType;

    const-string v3, "Effect"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/lightAssetKit/enums/AudioSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/AudioSourceType;->Effect:Lorg/light/lightAssetKit/enums/AudioSourceType;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/AudioSourceType;

    const-string v5, "Video"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/light/lightAssetKit/enums/AudioSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/lightAssetKit/enums/AudioSourceType;->Video:Lorg/light/lightAssetKit/enums/AudioSourceType;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/AudioSourceType;

    const-string v7, "PAG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/light/lightAssetKit/enums/AudioSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/light/lightAssetKit/enums/AudioSourceType;->PAG:Lorg/light/lightAssetKit/enums/AudioSourceType;

    .line 5
    new-instance v7, Lorg/light/lightAssetKit/enums/AudioSourceType;

    const-string v9, "Count"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/light/lightAssetKit/enums/AudioSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/light/lightAssetKit/enums/AudioSourceType;->Count:Lorg/light/lightAssetKit/enums/AudioSourceType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/light/lightAssetKit/enums/AudioSourceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lorg/light/lightAssetKit/enums/AudioSourceType;->$VALUES:[Lorg/light/lightAssetKit/enums/AudioSourceType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/AudioSourceType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/AudioSourceType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/AudioSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/AudioSourceType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/AudioSourceType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/AudioSourceType;->$VALUES:[Lorg/light/lightAssetKit/enums/AudioSourceType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/AudioSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/AudioSourceType;

    return-object v0
.end method
