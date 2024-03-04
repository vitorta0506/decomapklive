.class public final enum Lorg/light/lightAssetKit/enums/SmoothSharpenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/SmoothSharpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/SmoothSharpenType;

.field public static final enum HighPass:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

.field public static final enum SharpenDefault:Lorg/light/lightAssetKit/enums/SmoothSharpenType;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    const-string v1, "SharpenDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/light/lightAssetKit/enums/SmoothSharpenType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->SharpenDefault:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    const-string v3, "HighPass"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v3}, Lorg/light/lightAssetKit/enums/SmoothSharpenType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->HighPass:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->$VALUES:[Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/SmoothSharpenType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/SmoothSharpenType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->$VALUES:[Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/SmoothSharpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->name:Ljava/lang/String;

    return-object v0
.end method
