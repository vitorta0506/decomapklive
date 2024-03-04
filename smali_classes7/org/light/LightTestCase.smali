.class public Lorg/light/LightTestCase;
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
    invoke-static {}, Lorg/light/LightTestCase;->nativeInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/LightTestCase;->nativeContext:J

    return-void
.end method

.method public static native Make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFJ)Lorg/light/LightTestCase;
.end method

.method public static Make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFLandroid/opengl/EGLContext;)Lorg/light/LightTestCase;
    .locals 12

    move-object/from16 v0, p7

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v3, :cond_1

    .line 2
    invoke-virtual/range {p7 .. p7}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v1

    :cond_1
    move-wide v10, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 3
    invoke-static/range {v3 .. v11}, Lorg/light/LightTestCase;->Make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFJ)Lorg/light/LightTestCase;

    move-result-object v0

    return-object v0
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeRelease()V
.end method


# virtual methods
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
    invoke-direct {p0}, Lorg/light/LightTestCase;->nativeFinalize()V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lorg/light/LightTestCase;->nativeRelease()V

    return-void
.end method

.method public native run()Lorg/light/LightTestResult;
.end method

.method public native setFrameInterval(J)V
.end method

.method public native setSaveResultDirectory(Ljava/lang/String;)V
.end method

.method public native setSimilarityThreshold(F)V
.end method
