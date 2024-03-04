.class Lorg/light/service/LightSDKService$SDKServiceLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/service/LightSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDKServiceLogger"
.end annotation


# static fields
.field private static minPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lorg/light/service/LightSDKService$SDKServiceLogger;->minPriority:I

    const/4 v1, 0x6

    if-ge v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMinPriority(I)V
    .locals 0

    sput p0, Lorg/light/service/LightSDKService$SDKServiceLogger;->minPriority:I

    return-void
.end method
