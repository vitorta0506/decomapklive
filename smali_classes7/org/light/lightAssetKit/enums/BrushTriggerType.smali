.class public final enum Lorg/light/lightAssetKit/enums/BrushTriggerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/BrushTriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/BrushTriggerType;

.field public static final enum Line:Lorg/light/lightAssetKit/enums/BrushTriggerType;

.field public static final enum Point:Lorg/light/lightAssetKit/enums/BrushTriggerType;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;

    const-string v1, "Point"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/light/lightAssetKit/enums/BrushTriggerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->Point:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/BrushTriggerType;

    const-string v3, "Line"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v3}, Lorg/light/lightAssetKit/enums/BrushTriggerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/BrushTriggerType;->Line:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/light/lightAssetKit/enums/BrushTriggerType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/light/lightAssetKit/enums/BrushTriggerType;->$VALUES:[Lorg/light/lightAssetKit/enums/BrushTriggerType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/BrushTriggerType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/BrushTriggerType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/BrushTriggerType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->$VALUES:[Lorg/light/lightAssetKit/enums/BrushTriggerType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/BrushTriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/BrushTriggerType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->name:Ljava/lang/String;

    return-object v0
.end method
