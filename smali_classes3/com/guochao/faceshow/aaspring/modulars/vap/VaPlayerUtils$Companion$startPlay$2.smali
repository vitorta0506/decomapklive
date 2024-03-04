.class public final Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$2;
.super Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;->startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$2",
        "Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;",
        "onVideoComplete",
        "",
        "animView",
        "Lcom/tencent/qgame/animplayer/AnimView;",
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
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    return-void
.end method


# virtual methods
.method public onVideoComplete(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 2
    .param p1    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
