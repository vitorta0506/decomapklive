.class public final enum Lorg/light/lightAssetKit/enums/ReplaceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/ReplaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/ReplaceType;

.field public static final enum Color:Lorg/light/lightAssetKit/enums/ReplaceType;

.field public static final enum FilterReplacement:Lorg/light/lightAssetKit/enums/ReplaceType;

.field public static final enum Image:Lorg/light/lightAssetKit/enums/ReplaceType;

.field public static final enum None:Lorg/light/lightAssetKit/enums/ReplaceType;

.field public static final enum Text:Lorg/light/lightAssetKit/enums/ReplaceType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/ReplaceType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/lightAssetKit/enums/ReplaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/ReplaceType;->None:Lorg/light/lightAssetKit/enums/ReplaceType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/ReplaceType;

    const-string v3, "Text"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/lightAssetKit/enums/ReplaceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/ReplaceType;->Text:Lorg/light/lightAssetKit/enums/ReplaceType;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/ReplaceType;

    const-string v5, "Image"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/light/lightAssetKit/enums/ReplaceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/lightAssetKit/enums/ReplaceType;->Image:Lorg/light/lightAssetKit/enums/ReplaceType;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/ReplaceType;

    const-string v7, "FilterReplacement"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/light/lightAssetKit/enums/ReplaceType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/light/lightAssetKit/enums/ReplaceType;->FilterReplacement:Lorg/light/lightAssetKit/enums/ReplaceType;

    .line 5
    new-instance v7, Lorg/light/lightAssetKit/enums/ReplaceType;

    const-string v9, "Color"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/light/lightAssetKit/enums/ReplaceType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/light/lightAssetKit/enums/ReplaceType;->Color:Lorg/light/lightAssetKit/enums/ReplaceType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/light/lightAssetKit/enums/ReplaceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lorg/light/lightAssetKit/enums/ReplaceType;->$VALUES:[Lorg/light/lightAssetKit/enums/ReplaceType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/ReplaceType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/ReplaceType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/ReplaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/ReplaceType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/ReplaceType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/ReplaceType;->$VALUES:[Lorg/light/lightAssetKit/enums/ReplaceType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/ReplaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/ReplaceType;

    return-object v0
.end method
