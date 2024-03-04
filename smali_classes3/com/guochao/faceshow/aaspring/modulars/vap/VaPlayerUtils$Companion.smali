.class public final Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J&\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;",
        "",
        "()V",
        "startPlay",
        "",
        "animView",
        "Lcom/tencent/qgame/animplayer/AnimView;",
        "file",
        "Ljava/io/File;",
        "listener",
        "Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;)V
    .locals 1
    .param p1    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;->startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V

    return-void
.end method

.method public final startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
    .locals 3
    .param p1    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/qgame/animplayer/inter/IAnimListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimView;->isRunning()Z

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    const-string v2, "video"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    const-string v2, "bigLiveGift"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    const-string v2, "1v1"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    :cond_5
    const-string v1, "im"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_8

    .line 4
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleType;->FIT_CENTER:Lcom/tencent/qgame/animplayer/util/ScaleType;

    invoke-virtual {p1, v0}, Lcom/tencent/qgame/animplayer/AnimView;->setScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V

    goto :goto_5

    .line 5
    :cond_7
    :goto_4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/qgame/animplayer/AnimView;->setScaleType(Lcom/tencent/qgame/animplayer/util/IScaleType;)V

    :cond_8
    :goto_5
    if-eqz p1, :cond_9

    .line 6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Ljava/io/File;)V

    :cond_9
    if-nez p3, :cond_a

    if-eqz p1, :cond_b

    .line 7
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$2;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$2;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-virtual {p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;->setAnimListener(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    .line 8
    invoke-virtual {p1, p3}, Lcom/tencent/qgame/animplayer/AnimView;->setAnimListener(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V

    :cond_b
    :goto_6
    return-void
.end method
