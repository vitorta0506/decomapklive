.class public final Lcom/tencent/qgame/animplayer/mask/MaskRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mask/MaskRender;",
        "",
        "maskAnimPlugin",
        "Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;",
        "(Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;)V",
        "maskArray",
        "Lcom/tencent/qgame/animplayer/util/GlFloatArray;",
        "maskShader",
        "Lcom/tencent/qgame/animplayer/mask/MaskShader;",
        "getMaskShader",
        "()Lcom/tencent/qgame/animplayer/mask/MaskShader;",
        "setMaskShader",
        "(Lcom/tencent/qgame/animplayer/mask/MaskShader;)V",
        "vertexArray",
        "getVertexArray",
        "()Lcom/tencent/qgame/animplayer/util/GlFloatArray;",
        "setVertexArray",
        "(Lcom/tencent/qgame/animplayer/util/GlFloatArray;)V",
        "initMaskShader",
        "",
        "edgeBlur",
        "",
        "renderFrame",
        "config",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
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
.field public static final Companion:Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.MaskRender"


# instance fields
.field private final maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

.field private maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->Companion:Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    .line 2
    new-instance p1, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    .line 3
    new-instance p1, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    return-void
.end method


# virtual methods
.method public final getMaskShader()Lcom/tencent/qgame/animplayer/mask/MaskShader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;

    return-object v0
.end method

.method public final getVertexArray()Lcom/tencent/qgame/animplayer/util/GlFloatArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    return-object v0
.end method

.method public final initMaskShader(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskShader;

    invoke-direct {v0, p1}, Lcom/tencent/qgame/animplayer/mask/MaskShader;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;

    const/16 p1, 0xb71

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public final renderFrame(Lcom/tencent/qgame/animplayer/AnimConfig;)V
    .locals 12
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getDecoder()Lcom/tencent/qgame/animplayer/Decoder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/Decoder;->getRender()Lcom/tencent/qgame/animplayer/IRenderListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/IRenderListener;->getExternalTexture()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getMaskTexId()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getAlphaMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getMaskTexPair()Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qgame/animplayer/PointRect;

    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getMaskTexPair()Lkotlin/Pair;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qgame/animplayer/RefVec2;

    if-eqz v4, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getMaskPositionPair()Lkotlin/Pair;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qgame/animplayer/PointRect;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/tencent/qgame/animplayer/PointRect;

    .line 8
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v7

    .line 9
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v8

    .line 10
    invoke-direct {v5, v6, v6, v7, v8}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->getMaskPositionPair()Lkotlin/Pair;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/qgame/animplayer/RefVec2;

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/tencent/qgame/animplayer/RefVec2;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/tencent/qgame/animplayer/RefVec2;-><init>(II)V

    .line 12
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mask/MaskShader;->useProgram()V

    .line 13
    iget-object v8, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    .line 14
    sget-object v9, Lcom/tencent/qgame/animplayer/util/VertexUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;

    .line 15
    invoke-virtual {v7}, Lcom/tencent/qgame/animplayer/RefVec2;->getW()I

    move-result v10

    .line 16
    invoke-virtual {v7}, Lcom/tencent/qgame/animplayer/RefVec2;->getH()I

    move-result v7

    .line 17
    iget-object v11, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v11}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v11

    .line 18
    invoke-virtual {v9, v10, v7, v5, v11}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->create(IILcom/tencent/qgame/animplayer/PointRect;[F)[F

    move-result-object v5

    .line 19
    invoke-virtual {v8, v5}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    .line 20
    iget-object v5, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mask/MaskShader;->getAPositionLocation()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    if-gtz v1, :cond_4

    .line 21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->updateMaskTex()I

    move-result p1

    move v1, p1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    if-lez v1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    .line 24
    sget-object v2, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    .line 25
    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/RefVec2;->getW()I

    move-result v5

    .line 26
    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/RefVec2;->getH()I

    move-result v4

    .line 27
    iget-object v7, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v7}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v7

    .line 28
    invoke-virtual {v2, v5, v4, v3, v7}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/PointRect;[F)[F

    move-result-object v2

    .line 29
    invoke-virtual {p1, v2}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    .line 30
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mask/MaskShader;->getATextureMaskCoordinatesLocation()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    const p1, 0x84c0

    .line 31
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p1, 0xde1

    .line 32
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v2, 0x2600

    int-to-float v2, v2

    .line 33
    invoke-static {p1, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    int-to-float v2, v2

    .line 34
    invoke-static {p1, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v1, 0x8d65

    const v2, 0x812f

    .line 35
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 36
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 37
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mask/MaskShader;->getUTextureMaskUnitLocation()I

    move-result p1

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 p1, 0xbe2

    .line 38
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x302

    .line 39
    invoke-static {v0, v1, v6, v1}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 40
    invoke-static {v0, v6, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 41
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_5
    return-void
.end method

.method public final setMaskShader(Lcom/tencent/qgame/animplayer/mask/MaskShader;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/mask/MaskShader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;

    return-void
.end method

.method public final setVertexArray(Lcom/tencent/qgame/animplayer/util/GlFloatArray;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/util/GlFloatArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    return-void
.end method
