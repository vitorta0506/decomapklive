.class public final enum Lorg/light/lightAssetKit/enums/TrackingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/TrackingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/TrackingMode;

.field public static final enum AR_TRACKER_GROUND:Lorg/light/lightAssetKit/enums/TrackingMode;

.field public static final enum AR_TRACKER_ROTATION:Lorg/light/lightAssetKit/enums/TrackingMode;

.field public static final enum AR_TRACKER_SURFACE:Lorg/light/lightAssetKit/enums/TrackingMode;

.field public static final enum AR_TRACKER_WORLD:Lorg/light/lightAssetKit/enums/TrackingMode;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/TrackingMode;

    const-string v1, "AR_TRACKER_SURFACE"

    const/4 v2, 0x0

    const-string v3, "Surface"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/light/lightAssetKit/enums/TrackingMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/TrackingMode;->AR_TRACKER_SURFACE:Lorg/light/lightAssetKit/enums/TrackingMode;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/TrackingMode;

    const-string v3, "AR_TRACKER_WORLD"

    const/4 v4, 0x1

    const-string v5, "World"

    invoke-direct {v1, v3, v4, v4, v5}, Lorg/light/lightAssetKit/enums/TrackingMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/TrackingMode;->AR_TRACKER_WORLD:Lorg/light/lightAssetKit/enums/TrackingMode;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/TrackingMode;

    const-string v5, "AR_TRACKER_GROUND"

    const/4 v6, 0x2

    const-string v7, "Ground"

    invoke-direct {v3, v5, v6, v6, v7}, Lorg/light/lightAssetKit/enums/TrackingMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/light/lightAssetKit/enums/TrackingMode;->AR_TRACKER_GROUND:Lorg/light/lightAssetKit/enums/TrackingMode;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/TrackingMode;

    const-string v7, "AR_TRACKER_ROTATION"

    const/4 v8, 0x3

    const/4 v9, 0x6

    const-string v10, "Rotation"

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/light/lightAssetKit/enums/TrackingMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/light/lightAssetKit/enums/TrackingMode;->AR_TRACKER_ROTATION:Lorg/light/lightAssetKit/enums/TrackingMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/light/lightAssetKit/enums/TrackingMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/light/lightAssetKit/enums/TrackingMode;->$VALUES:[Lorg/light/lightAssetKit/enums/TrackingMode;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/TrackingMode;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/TrackingMode;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/TrackingMode;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/TrackingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/TrackingMode;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/TrackingMode;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/TrackingMode;->$VALUES:[Lorg/light/lightAssetKit/enums/TrackingMode;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/TrackingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/TrackingMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/TrackingMode;->name:Ljava/lang/String;

    return-object v0
.end method
