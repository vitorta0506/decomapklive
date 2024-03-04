.class public final Lcom/tencent/qgame/animplayer/mix/MixTouch;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mix/MixTouch;",
        "",
        "mixAnimPlugin",
        "Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;",
        "(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V",
        "calClick",
        "",
        "x",
        "",
        "y",
        "frame",
        "Lcom/tencent/qgame/animplayer/PointRect;",
        "onTouchEvent",
        "Lcom/tencent/qgame/animplayer/mix/Resource;",
        "ev",
        "Landroid/view/MotionEvent;",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;


# direct methods
.method public constructor <init>(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixTouch;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    return-void
.end method

.method private final calClick(IILcom/tencent/qgame/animplayer/PointRect;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getX()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getX()I

    move-result v0

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getW()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result p1

    if-lt p2, p1, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result p1

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getH()I

    move-result p3

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Lcom/tencent/qgame/animplayer/mix/Resource;
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixTouch;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getAnimView()Lcom/tencent/qgame/animplayer/IAnimView;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/IAnimView;->getRealSize()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mix/MixTouch;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v2

    .line 3
    iget-object v4, p0, Lcom/tencent/qgame/animplayer/mix/MixTouch;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v4

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    mul-float v5, v5, v2

    int-to-float v1, v1

    div-float/2addr v5, v1

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v4

    mul-float p1, p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 7
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixTouch;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getFrameAll()Lcom/tencent/qgame/animplayer/mix/FrameAll;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mix/FrameAll;->getMap()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/mix/MixTouch;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getCurFrameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/mix/FrameSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mix/FrameSet;->getList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/mix/Frame;

    .line 9
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mix/MixTouch;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getSrcMap()Lcom/tencent/qgame/animplayer/mix/SrcMap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/mix/SrcMap;->getMap()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/Frame;->getSrcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qgame/animplayer/mix/Src;

    if-eqz v2, :cond_3

    const-string v4, "mixAnimPlugin.srcMap?.ma\u2026.srcId) ?: return@forEach"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int v4, v5

    float-to-int v6, p1

    .line 10
    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/Frame;->getFrame()Lcom/tencent/qgame/animplayer/PointRect;

    move-result-object v1

    invoke-direct {p0, v4, v6, v1}, Lcom/tencent/qgame/animplayer/mix/MixTouch;->calClick(IILcom/tencent/qgame/animplayer/PointRect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    new-instance p1, Lcom/tencent/qgame/animplayer/mix/Resource;

    invoke-direct {p1, v2}, Lcom/tencent/qgame/animplayer/mix/Resource;-><init>(Lcom/tencent/qgame/animplayer/mix/Src;)V

    return-object p1

    :cond_4
    :goto_1
    return-object v3
.end method
