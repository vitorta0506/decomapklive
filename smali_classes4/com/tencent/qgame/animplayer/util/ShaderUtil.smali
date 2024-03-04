.class public final Lcom/tencent/qgame/animplayer/util/ShaderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0016\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/ShaderUtil;",
        "",
        "()V",
        "TAG",
        "",
        "compileShader",
        "",
        "shaderType",
        "shaderSource",
        "createAndLinkProgram",
        "vertexShaderHandle",
        "fragmentShaderHandle",
        "createProgram",
        "vertexSource",
        "fragmentSource",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.ShaderUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final compileShader(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x8b81

    .line 4
    invoke-static {p1, v1, p2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v0

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error compiling shader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.ShaderUtil"

    invoke-virtual {p2, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    return p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error creating shader."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createAndLinkProgram(II)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const p2, 0x8b82

    .line 5
    invoke-static {v0, p2, p1, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error compiling program: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AnimPlayer.ShaderUtil"

    invoke-virtual {p1, v2, p2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    return v0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error creating program."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const v0, 0x8b31

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->compileShader(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->compileShader(ILjava/lang/String;)I

    move-result p2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createAndLinkProgram(II)I

    move-result p1

    return p1
.end method
