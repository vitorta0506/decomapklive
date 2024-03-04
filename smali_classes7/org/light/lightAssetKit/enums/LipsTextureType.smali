.class public final enum Lorg/light/lightAssetKit/enums/LipsTextureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/LipsTextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/LipsTextureType;

.field public static final enum Default:Lorg/light/lightAssetKit/enums/LipsTextureType;

.field public static final enum Shuirun:Lorg/light/lightAssetKit/enums/LipsTextureType;

.field public static final enum Wumianyaguang:Lorg/light/lightAssetKit/enums/LipsTextureType;

.field public static final enum Yaguang:Lorg/light/lightAssetKit/enums/LipsTextureType;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/LipsTextureType;

    const-string v1, "Default"

    const/4 v2, 0x0

    const-string v3, "Defualt"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/light/lightAssetKit/enums/LipsTextureType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/LipsTextureType;->Default:Lorg/light/lightAssetKit/enums/LipsTextureType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/LipsTextureType;

    const-string v3, "Shuirun"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v3}, Lorg/light/lightAssetKit/enums/LipsTextureType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/LipsTextureType;->Shuirun:Lorg/light/lightAssetKit/enums/LipsTextureType;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/LipsTextureType;

    const-string v5, "Yaguang"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v5}, Lorg/light/lightAssetKit/enums/LipsTextureType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/light/lightAssetKit/enums/LipsTextureType;->Yaguang:Lorg/light/lightAssetKit/enums/LipsTextureType;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/LipsTextureType;

    const-string v7, "Wumianyaguang"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v7}, Lorg/light/lightAssetKit/enums/LipsTextureType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/light/lightAssetKit/enums/LipsTextureType;->Wumianyaguang:Lorg/light/lightAssetKit/enums/LipsTextureType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/light/lightAssetKit/enums/LipsTextureType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/light/lightAssetKit/enums/LipsTextureType;->$VALUES:[Lorg/light/lightAssetKit/enums/LipsTextureType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/LipsTextureType;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/LipsTextureType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/LipsTextureType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/LipsTextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/LipsTextureType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/LipsTextureType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/LipsTextureType;->$VALUES:[Lorg/light/lightAssetKit/enums/LipsTextureType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/LipsTextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/LipsTextureType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/LipsTextureType;->name:Ljava/lang/String;

    return-object v0
.end method
