.class public final enum Lorg/light/device/OfflineConfig$CutOutVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/OfflineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CutOutVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/device/OfflineConfig$CutOutVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/device/OfflineConfig$CutOutVersion;

.field public static final enum NEW:Lorg/light/device/OfflineConfig$CutOutVersion;

.field public static final enum OLD:Lorg/light/device/OfflineConfig$CutOutVersion;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/light/device/OfflineConfig$CutOutVersion;

    const-string v1, "OLD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/light/device/OfflineConfig$CutOutVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/device/OfflineConfig$CutOutVersion;->OLD:Lorg/light/device/OfflineConfig$CutOutVersion;

    .line 2
    new-instance v1, Lorg/light/device/OfflineConfig$CutOutVersion;

    const-string v4, "NEW"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/light/device/OfflineConfig$CutOutVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/device/OfflineConfig$CutOutVersion;->NEW:Lorg/light/device/OfflineConfig$CutOutVersion;

    new-array v4, v5, [Lorg/light/device/OfflineConfig$CutOutVersion;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lorg/light/device/OfflineConfig$CutOutVersion;->$VALUES:[Lorg/light/device/OfflineConfig$CutOutVersion;

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
    iput p3, p0, Lorg/light/device/OfflineConfig$CutOutVersion;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/device/OfflineConfig$CutOutVersion;
    .locals 1

    const-class v0, Lorg/light/device/OfflineConfig$CutOutVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/device/OfflineConfig$CutOutVersion;

    return-object p0
.end method

.method public static values()[Lorg/light/device/OfflineConfig$CutOutVersion;
    .locals 1

    sget-object v0, Lorg/light/device/OfflineConfig$CutOutVersion;->$VALUES:[Lorg/light/device/OfflineConfig$CutOutVersion;

    invoke-virtual {v0}, [Lorg/light/device/OfflineConfig$CutOutVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/device/OfflineConfig$CutOutVersion;

    return-object v0
.end method
