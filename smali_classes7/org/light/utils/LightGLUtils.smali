.class public Lorg/light/utils/LightGLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LightGLUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkProcessFence()V
    .locals 5

    const-string v0, "LightGLUtils"

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/fd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    array-length v2, v2

    .line 5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fd:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read process fd exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static createTexture(I)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    .line 2
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 3
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 4
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v3, 0x2601

    .line 5
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 6
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget p0, v1, v2

    return p0
.end method

.method public static deleteTexture(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static saveBitmap2JPG(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 7
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 8
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    throw p0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static saveNativeBuffer2Jpg(Lorg/light/NativeBuffer;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/light/NativeBuffer;->getBufferWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/light/NativeBuffer;->getBufferHeight()I

    move-result p0

    const/16 v2, 0xde1

    .line 3
    invoke-static {v0, v2, v1, p0}, Lorg/light/utils/LightGLUtils;->saveTexture2Bitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-static {p0, p1}, Lorg/light/utils/LightGLUtils;->saveBitmap2JPG(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static saveTexture2Bitmap(IIII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v3, v1, v2

    const v4, 0x8d40

    .line 2
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    .line 3
    invoke-static {v4, v3, p1, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    mul-int p0, p2, p3

    mul-int/lit8 p0, p0, 0x4

    .line 4
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move v5, p2

    move v6, p3

    move-object v9, p0

    .line 5
    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 6
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 9
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object p1
.end method

.method public static saveTexture2Jpg(IIIILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/light/utils/LightGLUtils;->saveTexture2Bitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-static {p0, p4}, Lorg/light/utils/LightGLUtils;->saveBitmap2JPG(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static saveTexture2Jpg(IIILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xde1

    .line 1
    invoke-static {p0, v0, p1, p2}, Lorg/light/utils/LightGLUtils;->saveTexture2Bitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p0, p3}, Lorg/light/utils/LightGLUtils;->saveBitmap2JPG(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
