.class public final enum Lorg/light/lightAssetKit/enums/LipsDetailType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/LipsDetailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/LipsDetailType;

.field public static final enum Combine_Gloss_Shimmer:Lorg/light/lightAssetKit/enums/LipsDetailType;

.field public static final enum Default:Lorg/light/lightAssetKit/enums/LipsDetailType;

.field public static final enum Gloss:Lorg/light/lightAssetKit/enums/LipsDetailType;

.field public static final enum Shimmer:Lorg/light/lightAssetKit/enums/LipsDetailType;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/LipsDetailType;

    const-string v1, "Default"

    const/4 v2, 0x0

    const-string v3, "Defualt"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/light/lightAssetKit/enums/LipsDetailType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/LipsDetailType;->Default:Lorg/light/lightAssetKit/enums/LipsDetailType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/LipsDetailType;

    const-string v3, "Gloss"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v3}, Lorg/light/lightAssetKit/enums/LipsDetailType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/LipsDetailType;->Gloss:Lorg/light/lightAssetKit/enums/LipsDetailType;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/LipsDetailType;

    const-string v5, "Shimmer"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v5}, Lorg/light/lightAssetKit/enums/LipsDetailType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/light/lightAssetKit/enums/LipsDetailType;->Shimmer:Lorg/light/lightAssetKit/enums/LipsDetailType;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/LipsDetailType;

    const-string v7, "Combine_Gloss_Shimmer"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v7}, Lorg/light/lightAssetKit/enums/LipsDetailType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/light/lightAssetKit/enums/LipsDetailType;->Combine_Gloss_Shimmer:Lorg/light/lightAssetKit/enums/LipsDetailType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/light/lightAssetKit/enums/LipsDetailType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/light/lightAssetKit/enums/LipsDetailType;->$VALUES:[Lorg/light/lightAssetKit/enums/LipsDetailType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/LipsDetailType;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/LipsDetailType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/LipsDetailType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/LipsDetailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/LipsDetailType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/LipsDetailType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/LipsDetailType;->$VALUES:[Lorg/light/lightAssetKit/enums/LipsDetailType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/LipsDetailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/LipsDetailType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/LipsDetailType;->name:Ljava/lang/String;

    return-object v0
.end method
