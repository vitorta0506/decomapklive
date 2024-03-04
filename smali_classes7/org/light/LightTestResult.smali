.class public Lorg/light/LightTestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "light-sdk"

    .line 1
    invoke-static {v0}, Lorg/light/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;)Z

    .line 2
    invoke-static {}, Lorg/light/LightTestResult;->nativeInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/LightTestResult;->nativeContext:J

    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public native exportToFile(Ljava/lang/String;)V
.end method

.method public native failedFrameCount()J
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-direct {p0}, Lorg/light/LightTestResult;->nativeFinalize()V

    return-void
.end method

.method public native successFrameCount()J
.end method

.method public native totalFrameCount()J
.end method
