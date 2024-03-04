.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->anim$lambda-7(Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;Landroid/view/ViewGroup;Landroid/view/View;)V
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
        "com/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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


# instance fields
.field final synthetic $container:Landroid/view/ViewGroup;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;->$container:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;->$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;->$container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;->$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;->$container:Landroid/view/ViewGroup;

    const v0, 0x7f0a0b29

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method
