.class Lcom/tencent/xmagic/CropEdgeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_FRAG_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D u_sampler;\nvarying vec4 v_TexCoord;\nvoid main()\n{\n    gl_FragColor = texture2D(u_sampler, v_TexCoord.xy);\n}"

.field protected static final DEFAULT_VERT_SHADER:Ljava/lang/String; = "attribute vec4 a_Position;\nattribute vec4 a_TexCoordinate;\nuniform mat4 u_CropMatrix;\nvarying vec4 v_TexCoord;\nvoid main()\n{\n    v_TexCoord = u_CropMatrix * a_TexCoordinate;\n    gl_Position =  a_Position;\n}"


# instance fields
.field private cropMatrixLoc:I

.field protected fragmentShader:I

.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private indexData:[S

.field protected mFBOIdHolder:[I

.field protected mShaderProgram:I

.field private positionLoc:I

.field private samplerLoc:I

.field private texBuffer:Ljava/nio/FloatBuffer;

.field private texCoordLoc:I

.field private texData:[F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertexData:[F

.field protected vertexShader:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexShader:I

    .line 3
    iput v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->fragmentShader:I

    .line 4
    iput v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 5
    iput-object v1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mFBOIdHolder:[I

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexData:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 7
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texData:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 8
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->indexData:[S

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 2
        0x3s
        0x2s
        0x0s
        0x0s
        0x1s
        0x2s
    .end array-data
.end method

.method protected static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method protected static createBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3

    .line 6
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method protected static linkProgram(II)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v1, 0x8b82

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v2

    if-eq p1, p0, :cond_0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "linkProgram: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "link"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    :cond_0
    return v0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Create Program Failed!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static loadShader(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadShader: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadshader"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p0, 0x0

    :cond_0
    return p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Create Shader Failed!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static saveToBuffer(Ljava/nio/ByteBuffer;II)V
    .locals 7

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :cond_0
    move-object v6, p0

    const/16 p0, 0xd05

    const/4 v0, 0x1

    .line 5
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v2, p1

    move v3, p2

    .line 6
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    :cond_1
    const p0, 0x8d40

    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public doRender(IIII[FLjava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v0, 0x4100

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0xde1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mFBOIdHolder:[I

    aget v2, v2, v0

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    .line 6
    invoke-static {v3, v2, v1, p2, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    :cond_0
    const-string p2, "OesCropRenderer"

    .line 7
    invoke-static {p2}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget v2, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->positionLoc:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget v3, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->positionLoc:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 11
    iget-object v2, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget v2, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texCoordLoc:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 13
    iget v3, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texCoordLoc:I

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v2, 0x84c0

    .line 14
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 15
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    iget p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->samplerLoc:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 17
    iget p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->cropMatrixLoc:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, p5, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 18
    invoke-static {p2}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 19
    iget-object p5, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->indexData:[S

    array-length p5, p5

    const/16 v0, 0x1403

    iget-object v1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {p1, p5, v0, v1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 20
    invoke-static {p2}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 21
    invoke-static {p6, p3, p4}, Lcom/tencent/xmagic/CropEdgeRenderer;->saveToBuffer(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public init()V
    .locals 2

    const-string v0, "attribute vec4 a_Position;\nattribute vec4 a_TexCoordinate;\nuniform mat4 u_CropMatrix;\nvarying vec4 v_TexCoord;\nvoid main()\n{\n    v_TexCoord = u_CropMatrix * a_TexCoordinate;\n    gl_Position =  a_Position;\n}"

    const-string v1, "precision mediump float;\nuniform sampler2D u_sampler;\nvarying vec4 v_TexCoord;\nvoid main()\n{\n    gl_FragColor = texture2D(u_sampler, v_TexCoord.xy);\n}"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/tencent/xmagic/CropEdgeRenderer;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x8b31

    .line 2
    invoke-static {v0, p1}, Lcom/tencent/xmagic/CropEdgeRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexShader:I

    const p1, 0x8b30

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/xmagic/CropEdgeRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->fragmentShader:I

    .line 4
    iget p2, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexShader:I

    invoke-static {p2, p1}, Lcom/tencent/xmagic/CropEdgeRenderer;->linkProgram(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    .line 5
    iget-object p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mFBOIdHolder:[I

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const p1, 0x8d40

    .line 6
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 7
    iget-object p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexData:[F

    invoke-static {p1}, Lcom/tencent/xmagic/CropEdgeRenderer;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 8
    iget-object p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texData:[F

    invoke-static {p1}, Lcom/tencent/xmagic/CropEdgeRenderer;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texBuffer:Ljava/nio/FloatBuffer;

    .line 9
    iget-object p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->indexData:[S

    invoke-static {p1}, Lcom/tencent/xmagic/CropEdgeRenderer;->createBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 10
    iget p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    const-string p2, "a_Position"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->positionLoc:I

    .line 11
    iget p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    const-string p2, "a_TexCoordinate"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->texCoordLoc:I

    .line 12
    iget p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    const-string/jumbo p2, "u_sampler"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->samplerLoc:I

    .line 13
    iget p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    const-string/jumbo p2, "u_CropMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->cropMatrixLoc:I

    const-string p1, "OesCropRenderer"

    .line 14
    invoke-static {p1}, Lcom/tencent/xmagic/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 2
    iget v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->fragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 3
    iget v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/xmagic/CropEdgeRenderer;->mFBOIdHolder:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method
