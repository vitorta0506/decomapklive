.class public final Lcom/tencent/qgame/animplayer/mask/MaskShader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mask/MaskShader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mask/MaskShader;",
        "",
        "edgeBlurBoolean",
        "",
        "(Z)V",
        "aPositionLocation",
        "",
        "getAPositionLocation",
        "()I",
        "aTextureMaskCoordinatesLocation",
        "getATextureMaskCoordinatesLocation",
        "program",
        "uTextureMaskUnitLocation",
        "getUTextureMaskUnitLocation",
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
.field private static final A_POSITION:Ljava/lang/String; = "vPosition"

.field private static final A_TEXTURE_MASK_COORDINATES:Ljava/lang/String; = "vTexCoordinateAlphaMask"

.field public static final Companion:Lcom/tencent/qgame/animplayer/mask/MaskShader$Companion;

.field private static final FRAGMENT_BLUR_EDGE:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D uTextureAlphaMask;\nvarying vec2 v_TexCoordinateAlphaMask;\nmat3 weight = mat3(0.0625,0.125,0.0625,0.125,0.25,0.125,0.0625,0.125,0.0625);\n int coreSize=3;\nfloat texelOffset = .01;\n\nvoid main() {\n   float alphaResult = 0.;\n   for(int y = 0; y < coreSize; y++) {\n       for(int x = 0;x < coreSize; x++) {\n           alphaResult += texture2D(uTextureAlphaMask, vec2(v_TexCoordinateAlphaMask.x + (-1.0 + float(x)) * texelOffset,v_TexCoordinateAlphaMask.y + (-1.0 + float(y)) * texelOffset)).a * weight[x][y];\n       }\n    }\n    gl_FragColor = vec4(0, 0, 0, alphaResult);\n}"

.field private static final FRAGMENT_NO_BLUR_EDGE:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D uTextureAlphaMask;\nvarying vec2 v_TexCoordinateAlphaMask;\n\nvoid main () {\n    vec4 alphaMaskColor = texture2D(uTextureAlphaMask, v_TexCoordinateAlphaMask);\n    gl_FragColor = vec4(0, 0, 0, alphaMaskColor.a);\n}"

.field private static final FRAGMENT_ROW:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D uTextureAlphaMask;\nvarying vec2 v_TexCoordinateAlphaMask;\nvec3 weight = vec3(0.4026,0.2442,0.0545);\n \nvoid main() {\n   float texelOffset = .01;\n   vec2 uv[5];\n   uv[0]= v_TexCoordinateAlphaMask;\n   uv[1]=vec2(uv[0].x+texelOffset*1.0,  uv[0].y);\n   uv[2]=vec2(uv[0].x-texelOffset*1.0,  uv[0].y);\n   uv[3]=vec2(uv[0].x+texelOffset*2.0,  uv[0].y);\n   uv[4]=vec2(uv[0].x-texelOffset*2.0,  uv[0].y);\n   float alphaResult = texture2D(uTextureAlphaMask, uv[0]).a * weight[0];\n   for(int i = 1; i < 3; ++i) {\n       alphaResult += texture2D(uTextureAlphaMask, uv[2*i-1]).a * weight[i];\n       alphaResult += texture2D(uTextureAlphaMask, uv[2*i]).a * weight[i];\n    }\n    gl_FragColor = vec4(0, 0, 0, alphaResult);\n}"

.field private static final U_TEXTURE_ALPHA_MASK_UNIT:Ljava/lang/String; = "uTextureAlphaMask"

.field private static final VERTEX:Ljava/lang/String; = "attribute vec4 vPosition;\nattribute vec4 vTexCoordinateAlphaMask;\nvarying vec2 v_TexCoordinateAlphaMask;\n\nvoid main() {\n    v_TexCoordinateAlphaMask = vec2(vTexCoordinateAlphaMask.x, vTexCoordinateAlphaMask.y);\n    gl_Position = vPosition;\n}"


# instance fields
.field private final aPositionLocation:I

.field private final aTextureMaskCoordinatesLocation:I

.field private final program:I

.field private final uTextureMaskUnitLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskShader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mask/MaskShader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->Companion:Lcom/tencent/qgame/animplayer/mask/MaskShader$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attribute vec4 vPosition;\nattribute vec4 vTexCoordinateAlphaMask;\nvarying vec2 v_TexCoordinateAlphaMask;\n\nvoid main() {\n    v_TexCoordinateAlphaMask = vec2(vTexCoordinateAlphaMask.x, vTexCoordinateAlphaMask.y);\n    gl_Position = vPosition;\n}"

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    const-string v1, "precision mediump float;\nuniform sampler2D uTextureAlphaMask;\nvarying vec2 v_TexCoordinateAlphaMask;\nmat3 weight = mat3(0.0625,0.125,0.0625,0.125,0.25,0.125,0.0625,0.125,0.0625);\n int coreSize=3;\nfloat texelOffset = .01;\n\nvoid main() {\n   float alphaResult = 0.;\n   for(int y = 0; y < coreSize; y++) {\n       for(int x = 0;x < coreSize; x++) {\n           alphaResult += texture2D(uTextureAlphaMask, vec2(v_TexCoordinateAlphaMask.x + (-1.0 + float(x)) * texelOffset,v_TexCoordinateAlphaMask.y + (-1.0 + float(y)) * texelOffset)).a * weight[x][y];\n       }\n    }\n    gl_FragColor = vec4(0, 0, 0, alphaResult);\n}"

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    const-string v1, "precision mediump float;\nuniform sampler2D uTextureAlphaMask;\nvarying vec2 v_TexCoordinateAlphaMask;\n\nvoid main () {\n    vec4 alphaMaskColor = texture2D(uTextureAlphaMask, v_TexCoordinateAlphaMask);\n    gl_FragColor = vec4(0, 0, 0, alphaMaskColor.a);\n}"

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->program:I

    const-string/jumbo v0, "uTextureAlphaMask"

    .line 3
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->uTextureMaskUnitLocation:I

    const-string/jumbo v0, "vPosition"

    .line 4
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->aPositionLocation:I

    const-string/jumbo v0, "vTexCoordinateAlphaMask"

    .line 5
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->aTextureMaskCoordinatesLocation:I

    return-void
.end method


# virtual methods
.method public final getAPositionLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->aPositionLocation:I

    return v0
.end method

.method public final getATextureMaskCoordinatesLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->aTextureMaskCoordinatesLocation:I

    return v0
.end method

.method public final getUTextureMaskUnitLocation()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->uTextureMaskUnitLocation:I

    return v0
.end method

.method public final useProgram()V
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskShader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
