.class public final Lcom/tencent/qgame/animplayer/mix/MixShader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mix/MixShader;",
        "",
        "()V",
        "aPositionLocation",
        "",
        "getAPositionLocation",
        "()I",
        "aTextureMaskCoordinatesLocation",
        "getATextureMaskCoordinatesLocation",
        "aTextureSrcCoordinatesLocation",
        "getATextureSrcCoordinatesLocation",
        "program",
        "getProgram",
        "uColorLocation",
        "getUColorLocation",
        "uIsFillLocation",
        "getUIsFillLocation",
        "uTextureMaskUnitLocation",
        "getUTextureMaskUnitLocation",
        "uTextureSrcUnitLocation",
        "getUTextureSrcUnitLocation",
        "useProgram",
        "",
        "Companion",
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
.field private static final A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final A_TEXTURE_MASK_COORDINATES:Ljava/lang/String; = "a_TextureMaskCoordinates"

.field private static final A_TEXTURE_SRC_COORDINATES:Ljava/lang/String; = "a_TextureSrcCoordinates"

.field public static final Companion:Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;

.field private static final FRAGMENT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float; \nuniform sampler2D u_TextureSrcUnit;\nuniform samplerExternalOES u_TextureMaskUnit;\nuniform int u_isFill;\nuniform vec4 u_Color;\nvarying vec2 v_TextureSrcCoordinates;\nvarying vec2 v_TextureMaskCoordinates;\nvoid main()\n{\n    vec4 srcRgba = texture2D(u_TextureSrcUnit, v_TextureSrcCoordinates);\n    vec4 maskRgba = texture2D(u_TextureMaskUnit, v_TextureMaskCoordinates);\n    float isFill = step(0.5, float(u_isFill));\n    vec4 srcRgbaCal = isFill * vec4(u_Color.r, u_Color.g, u_Color.b, srcRgba.a) + (1.0 - isFill) * srcRgba;\n    gl_FragColor = vec4(srcRgbaCal.r, srcRgbaCal.g, srcRgbaCal.b, srcRgba.a * maskRgba.r);\n}"

.field private static final U_COLOR:Ljava/lang/String; = "u_Color"

.field private static final U_IS_FILL:Ljava/lang/String; = "u_isFill"

.field private static final U_TEXTURE_MASK_UNIT:Ljava/lang/String; = "u_TextureMaskUnit"

.field private static final U_TEXTURE_SRC_UNIT:Ljava/lang/String; = "u_TextureSrcUnit"

.field private static final VERTEX:Ljava/lang/String; = "attribute vec4 a_Position;  \nattribute vec2 a_TextureSrcCoordinates;\nattribute vec2 a_TextureMaskCoordinates;\nvarying vec2 v_TextureSrcCoordinates;\nvarying vec2 v_TextureMaskCoordinates;\nvoid main()\n{\n    v_TextureSrcCoordinates = a_TextureSrcCoordinates;\n    v_TextureMaskCoordinates = a_TextureMaskCoordinates;\n    gl_Position = a_Position;\n}"


# instance fields
.field private final aPositionLocation:I

.field private final aTextureMaskCoordinatesLocation:I

.field private final aTextureSrcCoordinatesLocation:I

.field private final program:I

.field private final uColorLocation:I

.field private final uIsFillLocation:I

.field private final uTextureMaskUnitLocation:I

.field private final uTextureSrcUnitLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/MixShader;->Companion:Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    const-string v1, "attribute vec4 a_Position;  \nattribute vec2 a_TextureSrcCoordinates;\nattribute vec2 a_TextureMaskCoordinates;\nvarying vec2 v_TextureSrcCoordinates;\nvarying vec2 v_TextureMaskCoordinates;\nvoid main()\n{\n    v_TextureSrcCoordinates = a_TextureSrcCoordinates;\n    v_TextureMaskCoordinates = a_TextureMaskCoordinates;\n    gl_Position = a_Position;\n}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float; \nuniform sampler2D u_TextureSrcUnit;\nuniform samplerExternalOES u_TextureMaskUnit;\nuniform int u_isFill;\nuniform vec4 u_Color;\nvarying vec2 v_TextureSrcCoordinates;\nvarying vec2 v_TextureMaskCoordinates;\nvoid main()\n{\n    vec4 srcRgba = texture2D(u_TextureSrcUnit, v_TextureSrcCoordinates);\n    vec4 maskRgba = texture2D(u_TextureMaskUnit, v_TextureMaskCoordinates);\n    float isFill = step(0.5, float(u_isFill));\n    vec4 srcRgbaCal = isFill * vec4(u_Color.r, u_Color.g, u_Color.b, srcRgba.a) + (1.0 - isFill) * srcRgba;\n    gl_FragColor = vec4(srcRgbaCal.r, srcRgbaCal.g, srcRgbaCal.b, srcRgba.a * maskRgba.r);\n}"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->program:I

    const-string/jumbo v1, "u_TextureSrcUnit"

    .line 3
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureSrcUnitLocation:I

    const-string/jumbo v1, "u_TextureMaskUnit"

    .line 4
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureMaskUnitLocation:I

    const-string/jumbo v1, "u_isFill"

    .line 5
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uIsFillLocation:I

    const-string/jumbo v1, "u_Color"

    .line 6
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uColorLocation:I

    const-string v1, "a_Position"

    .line 7
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aPositionLocation:I

    const-string v1, "a_TextureSrcCoordinates"

    .line 8
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureSrcCoordinatesLocation:I

    const-string v1, "a_TextureMaskCoordinates"

    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureMaskCoordinatesLocation:I

    return-void
.end method


# virtual methods
.method public final getAPositionLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aPositionLocation:I

    return v0
.end method

.method public final getATextureMaskCoordinatesLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureMaskCoordinatesLocation:I

    return v0
.end method

.method public final getATextureSrcCoordinatesLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureSrcCoordinatesLocation:I

    return v0
.end method

.method public final getProgram()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->program:I

    return v0
.end method

.method public final getUColorLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uColorLocation:I

    return v0
.end method

.method public final getUIsFillLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uIsFillLocation:I

    return v0
.end method

.method public final getUTextureMaskUnitLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureMaskUnitLocation:I

    return v0
.end method

.method public final getUTextureSrcUnitLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureSrcUnitLocation:I

    return v0
.end method

.method public final useProgram()V
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
