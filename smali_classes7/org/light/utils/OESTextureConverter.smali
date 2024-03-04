.class public Lorg/light/utils/OESTextureConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/utils/Renderer;


# static fields
.field static squareCoords:[F

.field static textureVertices:[F

.field static textureVerticesFlipY:[F


# instance fields
.field private forHardwareBuffer:Z

.field private final fragmentShaderCode:Ljava/lang/String;

.field private mFrameBuffer:I

.field private mPositionHandle:I

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureCoordHandle:I

.field private mTextureLocation:I

.field private muSTMatrixHandle:I

.field private textureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/light/utils/OESTextureConverter;->squareCoords:[F

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lorg/light/utils/OESTextureConverter;->textureVertices:[F

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lorg/light/utils/OESTextureConverter;->textureVerticesFlipY:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/light/utils/OESTextureConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "precision mediump float;\nattribute vec4 vPosition;uniform mat4 uSTMatrix;\nattribute vec4 inputTextureCoordinate;varying vec4 textureCoordinate;void main(){gl_Position = vPosition;textureCoordinate = uSTMatrix * inputTextureCoordinate;}"

    .line 3
    iput-object v0, p0, Lorg/light/utils/OESTextureConverter;->vertexShaderCode:Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;varying vec4 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {  gl_FragColor = texture2D( s_texture, vec2(textureCoordinate.x,textureCoordinate.y));\n}"

    .line 4
    iput-object v1, p0, Lorg/light/utils/OESTextureConverter;->fragmentShaderCode:Ljava/lang/String;

    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 5
    iput-object v2, p0, Lorg/light/utils/OESTextureConverter;->mSTMatrix:[F

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Lorg/light/utils/OESTextureConverter;->forHardwareBuffer:Z

    .line 7
    sget-object v3, Lorg/light/utils/OESTextureConverter;->squareCoords:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/light/utils/OESTextureConverter;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 10
    sget-object v4, Lorg/light/utils/OESTextureConverter;->squareCoords:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 11
    iget-object v3, p0, Lorg/light/utils/OESTextureConverter;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    sget-object v3, Lorg/light/utils/OESTextureConverter;->textureVertices:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 13
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/light/utils/OESTextureConverter;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 15
    sget-object p1, Lorg/light/utils/OESTextureConverter;->textureVerticesFlipY:[F

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/light/utils/OESTextureConverter;->textureVertices:[F

    :goto_0
    invoke-virtual {v3, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 16
    iget-object p1, p0, Lorg/light/utils/OESTextureConverter;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const p1, 0x8b31

    .line 17
    invoke-direct {p0, p1, v0}, Lorg/light/utils/OESTextureConverter;->loadShader(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    .line 18
    invoke-direct {p0, v0, v1}, Lorg/light/utils/OESTextureConverter;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 19
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    .line 20
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 21
    iget v1, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 22
    iget v1, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 23
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 24
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p1, 0x1

    new-array v0, p1, [I

    .line 25
    invoke-static {p1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget p1, v0, v2

    .line 26
    iput p1, p0, Lorg/light/utils/OESTextureConverter;->mFrameBuffer:I

    .line 27
    iget-object p1, p0, Lorg/light/utils/OESTextureConverter;->mSTMatrix:[F

    invoke-static {p1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 2
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method


# virtual methods
.method public draw(IIII)V
    .locals 11

    .line 1
    iget v0, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v0, 0xde1

    .line 2
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    iget-boolean v1, p0, Lorg/light/utils/OESTextureConverter;->forHardwareBuffer:Z

    if-nez v1, :cond_0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move v5, p3

    move v6, p4

    .line 4
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 5
    :cond_0
    iget v1, p0, Lorg/light/utils/OESTextureConverter;->mFrameBuffer:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v1, v0, p2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 7
    invoke-static {v3, v3, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 8
    iget p2, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    const-string p3, "s_texture"

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/light/utils/OESTextureConverter;->mTextureLocation:I

    const p2, 0x84c0

    .line 9
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 10
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 11
    iget p1, p0, Lorg/light/utils/OESTextureConverter;->mTextureLocation:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 12
    iget p1, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    const-string p3, "vPosition"

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/light/utils/OESTextureConverter;->mPositionHandle:I

    .line 13
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 14
    iget v4, p0, Lorg/light/utils/OESTextureConverter;->mPositionHandle:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/light/utils/OESTextureConverter;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 15
    iget p1, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    const-string p3, "inputTextureCoordinate"

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/light/utils/OESTextureConverter;->mTextureCoordHandle:I

    .line 16
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 17
    iget v4, p0, Lorg/light/utils/OESTextureConverter;->mTextureCoordHandle:I

    iget-object v9, p0, Lorg/light/utils/OESTextureConverter;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 18
    iget p1, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    const-string p3, "uSTMatrix"

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/light/utils/OESTextureConverter;->muSTMatrixHandle:I

    const/4 p3, 0x1

    .line 19
    iget-object p4, p0, Lorg/light/utils/OESTextureConverter;->mSTMatrix:[F

    invoke-static {p1, p3, v3, p4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 p3, 0x6

    .line 20
    invoke-static {p1, v3, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 21
    invoke-static {p2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 22
    iget p1, p0, Lorg/light/utils/OESTextureConverter;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 23
    iget p1, p0, Lorg/light/utils/OESTextureConverter;->mTextureCoordHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 24
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 25
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 26
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iget v2, p0, Lorg/light/utils/OESTextureConverter;->mFrameBuffer:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 3
    iget v0, p0, Lorg/light/utils/OESTextureConverter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public setForHardwareBuffer(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/light/utils/OESTextureConverter;->forHardwareBuffer:Z

    return-void
.end method

.method public setSTMatrix([F)V
    .locals 0

    iput-object p1, p0, Lorg/light/utils/OESTextureConverter;->mSTMatrix:[F

    return-void
.end method
