.class public Lcom/tencent/xmagic/GlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "com.tencent.xmagic.GlUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Lcom/tencent/xmagic/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindTexture(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xde1

    .line 2
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    .line 3
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    const v1, 0x46180400    # 9729.0f

    .line 4
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v1, 0x47012f00    # 33071.0f

    .line 5
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 6
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/4 p1, 0x0

    .line 7
    invoke-static {v0, p1, p0, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "render"

    .line 3
    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in program"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createOESTexture()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const v3, 0x8d65

    .line 2
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 3
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 4
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 5
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 6
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v1, v2

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 1
    invoke-static {v0, p0}, Lcom/tencent/xmagic/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 2
    invoke-static {v1, p1}, Lcom/tencent/xmagic/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 4
    invoke-static {v2}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    const-string v2, "GLUtil"

    if-nez v1, :cond_2

    const-string v3, "Could not create program"

    .line 5
    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachShader"

    .line 7
    invoke-static {p0}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 8
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 9
    invoke-static {p0}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v3, 0x8b82

    .line 11
    invoke-static {v1, v3, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v0

    if-eq p1, p0, :cond_3

    const-string p0, "Could not link program: "

    .line 12
    invoke-static {v2, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public static createTexture(III)I
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v3, 0xde1

    .line 13
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v12, 0x0

    move v6, p2

    move v7, p0

    move v8, p1

    .line 14
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p0, 0x2801

    const p1, 0x46180400    # 9729.0f

    .line 15
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2800

    .line 16
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const p1, 0x812f

    .line 17
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2803

    .line 18
    invoke-static {v3, p0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 19
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget p0, v1, v2

    return p0
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 21
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v3, 0xde1

    .line 22
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    .line 23
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 24
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 25
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 26
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 27
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    aget p0, v1, v2

    return p0

    :cond_0
    return v2
.end method

.method public static createTexture(Ljava/nio/ByteBuffer;III)I
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const-string v1, "glGenTextures"

    .line 2
    invoke-static {v1}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0xde1

    .line 3
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    .line 4
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 5
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 6
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    .line 7
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const-string v3, "loadImageTexture"

    .line 8
    invoke-static {v3}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x1401

    move/from16 v6, p3

    move v7, p1

    move v8, p2

    move/from16 v10, p3

    move-object v12, p0

    .line 9
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 10
    invoke-static {v3}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 11
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLUtil"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static logVersionInfo()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vendor  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f00

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLUtil"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readShaderFromResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    move-object v1, p0

    move-object p0, v2

    .line 10
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p0, :cond_2

    .line 11
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 14
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception v0

    :goto_5
    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_5

    .line 16
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_5
    move-exception p0

    goto :goto_8

    :cond_5
    :goto_7
    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    .line 19
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_7
    :goto_9
    throw v0
.end method

.method public static readTexture(III)Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v3, v1, v2

    const v4, 0x8d40

    .line 3
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v3, "glBindFramebuffer"

    .line 4
    invoke-static {v3}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v5, 0x8ce0

    const/16 v6, 0xde1

    .line 5
    invoke-static {v4, v5, v6, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string p0, "glFramebufferTexture2D"

    .line 6
    invoke-static {p0}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    mul-int p0, p1, p2

    mul-int/lit8 p0, p0, 0x4

    .line 7
    new-array p0, p0, [B

    .line 8
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 v5, 0xd05

    .line 9
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    move v7, p1

    move v8, p2

    move-object v11, p0

    .line 10
    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v5, "glReadPixels"

    .line 11
    invoke-static {v5}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 12
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 14
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 15
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 16
    invoke-static {v3}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-object p1
.end method

.method public static saveBitmapToDisk(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static saveTexture(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tencent/xmagic/GlUtil;->readTexture(III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p0, p3}, Lcom/tencent/xmagic/GlUtil;->saveBitmapToDisk(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
