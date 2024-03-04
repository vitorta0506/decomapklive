.class public final Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/gift/view/GiftComboView;->setNum(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/animation/AnimatorKt$addListener$listener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animator",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "core-ktx_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/gift/view/GiftComboView;Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->perfectIV:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->isTouch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v3}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getTop$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)F

    move-result v3

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    const-string/jumbo v0, "translationY"

    .line 7
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ofFloat(\n               \u2026t()\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$setNumYAnimator$p(Lcom/guochao/faceshow/gift/view/GiftComboView;Landroid/animation/ObjectAnimator;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getNumYAnimator$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "numYAnimator"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getNumYAnimator$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getHandler$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getShakeRunnable$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getHandler$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getShakeRunnable$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
