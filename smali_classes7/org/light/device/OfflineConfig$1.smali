.class synthetic Lorg/light/device/OfflineConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/OfflineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$light$bean$PhoneType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/light/bean/PhoneType;->values()[Lorg/light/bean/PhoneType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/light/device/OfflineConfig$1;->$SwitchMap$org$light$bean$PhoneType:[I

    :try_start_0
    sget-object v1, Lorg/light/bean/PhoneType;->SUPER_PHONE:Lorg/light/bean/PhoneType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/light/device/OfflineConfig$1;->$SwitchMap$org$light$bean$PhoneType:[I

    sget-object v1, Lorg/light/bean/PhoneType;->MIDDER_PHONE:Lorg/light/bean/PhoneType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/light/device/OfflineConfig$1;->$SwitchMap$org$light$bean$PhoneType:[I

    sget-object v1, Lorg/light/bean/PhoneType;->LOW_PHONE:Lorg/light/bean/PhoneType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
