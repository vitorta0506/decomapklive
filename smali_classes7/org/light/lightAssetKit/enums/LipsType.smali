.class public final enum Lorg/light/lightAssetKit/enums/LipsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/LipsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/LipsType;

.field public static final enum Color:Lorg/light/lightAssetKit/enums/LipsType;

.field public static final enum Image:Lorg/light/lightAssetKit/enums/LipsType;

.field public static final enum Lut:Lorg/light/lightAssetKit/enums/LipsType;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/LipsType;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/light/lightAssetKit/enums/LipsType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/LipsType;->Image:Lorg/light/lightAssetKit/enums/LipsType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/LipsType;

    const-string v3, "Color"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v3}, Lorg/light/lightAssetKit/enums/LipsType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/LipsType;->Color:Lorg/light/lightAssetKit/enums/LipsType;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/LipsType;

    const-string v5, "Lut"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v5}, Lorg/light/lightAssetKit/enums/LipsType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/light/lightAssetKit/enums/LipsType;->Lut:Lorg/light/lightAssetKit/enums/LipsType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/light/lightAssetKit/enums/LipsType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/light/lightAssetKit/enums/LipsType;->$VALUES:[Lorg/light/lightAssetKit/enums/LipsType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/LipsType;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/LipsType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/LipsType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/LipsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/LipsType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/LipsType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/LipsType;->$VALUES:[Lorg/light/lightAssetKit/enums/LipsType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/LipsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/LipsType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/LipsType;->name:Ljava/lang/String;

    return-object v0
.end method
