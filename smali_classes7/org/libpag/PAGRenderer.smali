.class public Lorg/libpag/PAGRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private nativeContext:J

.field private pagFile:Lorg/libpag/PAGFile;

.field private pagSurface:Lorg/libpag/PAGSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "libpag"

    .line 1
    invoke-static {v0}, Lorg/extra/tools/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/libpag/PAGRenderer;->nativeInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/libpag/PAGRenderer;->pagSurface:Lorg/libpag/PAGSurface;

    .line 3
    iput-object v0, p0, Lorg/libpag/PAGRenderer;->pagFile:Lorg/libpag/PAGFile;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/libpag/PAGRenderer;->nativeContext:J

    .line 5
    invoke-direct {p0}, Lorg/libpag/PAGRenderer;->nativeSetup()V

    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetMatrix([F)V
.end method

.method private static final native nativeInit()V
.end method

.method private final native nativeRelease()V
.end method

.method private native nativeReplaceImage(IJ)V
.end method

.method private native nativeSetFile(J)V
.end method

.method private native nativeSetMatrix(FFFFFF)V
.end method

.method private native nativeSetSurface(J)V
.end method

.method private final native nativeSetup()V
.end method


# virtual methods
.method public native cacheEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native cacheScale()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native draw()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lorg/libpag/PAGRenderer;->nativeFinalize()V

    return-void
.end method

.method public flush()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/libpag/PAGRenderer;->flush(Z)Z

    move-result v0

    return v0
.end method

.method public native flush(Z)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getFile()Lorg/libpag/PAGFile;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/libpag/PAGRenderer;->pagFile:Lorg/libpag/PAGFile;

    return-object v0
.end method

.method public native getLayersUnderPoint(FF)[Lorg/libpag/PAGLayer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getProgress()D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getRootComposition()Lorg/libpag/PAGComposition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getSurface()Lorg/libpag/PAGSurface;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/libpag/PAGRenderer;->pagSurface:Lorg/libpag/PAGSurface;

    return-object v0
.end method

.method public matrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    invoke-direct {p0, v0}, Lorg/libpag/PAGRenderer;->nativeGetMatrix([F)V

    .line 2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v1
.end method

.method public native maxFrameRate()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lorg/libpag/PAGRenderer;->nativeRelease()V

    return-void
.end method

.method public replaceImage(ILorg/libpag/PAGImage;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/libpag/PAGRenderer;->nativeReplaceImage(IJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p2, Lorg/libpag/PAGImage;->nativeContext:J

    invoke-direct {p0, p1, v0, v1}, Lorg/libpag/PAGRenderer;->nativeReplaceImage(IJ)V

    :goto_0
    return-void
.end method

.method public native reset()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native scaleMode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native setCacheEnabled(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native setCacheScale(F)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setFile(Lorg/libpag/PAGFile;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/libpag/PAGRenderer;->pagFile:Lorg/libpag/PAGFile;

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p1, Lorg/libpag/PAGLayer;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lorg/libpag/PAGRenderer;->nativeSetFile(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lorg/libpag/PAGRenderer;->nativeSetFile(J)V

    :goto_0
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    aget v2, v0, p1

    const/4 p1, 0x3

    aget v3, v0, p1

    const/4 p1, 0x1

    aget v4, v0, p1

    const/4 p1, 0x4

    aget v5, v0, p1

    const/4 p1, 0x2

    aget v6, v0, p1

    const/4 p1, 0x5

    aget v7, v0, p1

    move-object v1, p0

    .line 2
    invoke-direct/range {v1 .. v7}, Lorg/libpag/PAGRenderer;->nativeSetMatrix(FFFFFF)V

    return-void
.end method

.method public native setMaxFrameRate(F)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native setProgress(D)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native setScaleMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setSurface(Lorg/libpag/PAGSurface;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/libpag/PAGRenderer;->pagSurface:Lorg/libpag/PAGSurface;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lorg/libpag/PAGRenderer;->nativeSetSurface(J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p1, Lorg/libpag/PAGSurface;->nativeSurface:J

    invoke-direct {p0, v0, v1}, Lorg/libpag/PAGRenderer;->nativeSetSurface(J)V

    :goto_0
    return-void
.end method

.method public native setTextData(ILorg/libpag/PAGText;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
