.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animateAddress(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
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
.field final synthetic $addr$inlined:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;->$addr$inlined:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x2

    new-array p3, p2, [Landroid/animation/Animator;

    .line 3
    iget-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;->$addr$inlined:Landroid/widget/TextView;

    new-array p5, p2, [F

    invoke-virtual {p4}, Landroid/widget/TextView;->getWidth()I

    move-result p6

    int-to-float p6, p6

    neg-float p6, p6

    const/4 p7, 0x0

    aput p6, p5, p7

    const/4 p6, 0x1

    const/4 p8, 0x0

    aput p8, p5, p6

    const-string p9, "translationX"

    invoke-static {p4, p9, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const-wide/16 v0, 0x190

    .line 4
    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object p4, p3, p7

    .line 6
    iget-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;->$addr$inlined:Landroid/widget/TextView;

    new-array p2, p2, [F

    aput p8, p2, p7

    invoke-virtual {p4}, Landroid/widget/TextView;->getWidth()I

    move-result p5

    int-to-float p5, p5

    neg-float p5, p5

    aput p5, p2, p6

    invoke-static {p4, p9, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 p4, 0x320

    .line 8
    invoke-virtual {p2, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aput-object p2, p3, p6

    .line 9
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 10
    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$2$3;

    iget-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;->$addr$inlined:Landroid/widget/TextView;

    invoke-direct {p2, p3}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$2$3;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;->$addr$inlined:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
