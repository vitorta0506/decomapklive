.class public Lorg/light/gles/OffscreenSurface;
.super Lorg/light/gles/EglSurfaceBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/light/gles/EglCore;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/light/gles/EglSurfaceBase;-><init>(Lorg/light/gles/EglCore;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/light/gles/OffscreenSurface;->createOffscreenSurface(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createOffscreenSurface(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/light/gles/EglSurfaceBase;->createOffscreenSurface(II)V

    return-void
.end method

.method public bridge synthetic createWindowSurface(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/light/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    invoke-super {p0}, Lorg/light/gles/EglSurfaceBase;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    invoke-super {p0}, Lorg/light/gles/EglSurfaceBase;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic makeCurrent()V
    .locals 0

    invoke-super {p0}, Lorg/light/gles/EglSurfaceBase;->makeCurrent()V

    return-void
.end method

.method public bridge synthetic makeCurrentReadFrom(Lorg/light/gles/EglSurfaceBase;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/light/gles/EglSurfaceBase;->makeCurrentReadFrom(Lorg/light/gles/EglSurfaceBase;)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lorg/light/gles/OffscreenSurface;->releaseEglSurface()V

    return-void
.end method

.method public bridge synthetic releaseEglSurface()V
    .locals 0

    invoke-super {p0}, Lorg/light/gles/EglSurfaceBase;->releaseEglSurface()V

    return-void
.end method

.method public bridge synthetic saveFrame(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/light/gles/EglSurfaceBase;->saveFrame(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic setPresentationTime(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/light/gles/EglSurfaceBase;->setPresentationTime(J)V

    return-void
.end method

.method public bridge synthetic swapBuffers()Z
    .locals 1

    invoke-super {p0}, Lorg/light/gles/EglSurfaceBase;->swapBuffers()Z

    move-result v0

    return v0
.end method
