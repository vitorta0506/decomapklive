.class Lorg/light/device/DeviceInstance$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/DeviceInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/light/device/DeviceInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/light/device/DeviceInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/light/device/DeviceInstance;-><init>(Lorg/light/device/DeviceInstance$1;)V

    sput-object v0, Lorg/light/device/DeviceInstance$InstanceHolder;->INSTANCE:Lorg/light/device/DeviceInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/light/device/DeviceInstance;
    .locals 1

    sget-object v0, Lorg/light/device/DeviceInstance$InstanceHolder;->INSTANCE:Lorg/light/device/DeviceInstance;

    return-object v0
.end method
