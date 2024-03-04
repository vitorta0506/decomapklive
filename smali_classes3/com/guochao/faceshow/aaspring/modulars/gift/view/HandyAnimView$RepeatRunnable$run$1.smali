.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setAnimating(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->clearPoints()Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$setDrawable$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$resetView(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getPlayPointsListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setAnimating(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->clearPoints()Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$setDrawable$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$resetView(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getPlayPointsListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
