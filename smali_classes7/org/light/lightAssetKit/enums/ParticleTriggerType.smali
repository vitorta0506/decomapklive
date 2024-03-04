.class public final enum Lorg/light/lightAssetKit/enums/ParticleTriggerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/ParticleTriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/ParticleTriggerType;

.field public static final enum NonStatic:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

.field public static final enum Static:Lorg/light/lightAssetKit/enums/ParticleTriggerType;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    const-string v1, "NonStatic"

    const/4 v2, 0x0

    const-string v3, "nonstatic"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/light/lightAssetKit/enums/ParticleTriggerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;->NonStatic:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    const-string v3, "Static"

    const/4 v4, 0x1

    const-string v5, "static"

    invoke-direct {v1, v3, v4, v4, v5}, Lorg/light/lightAssetKit/enums/ParticleTriggerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/ParticleTriggerType;->Static:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/light/lightAssetKit/enums/ParticleTriggerType;->$VALUES:[Lorg/light/lightAssetKit/enums/ParticleTriggerType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/ParticleTriggerType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/ParticleTriggerType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;->$VALUES:[Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/ParticleTriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/ParticleTriggerType;->name:Ljava/lang/String;

    return-object v0
.end method
