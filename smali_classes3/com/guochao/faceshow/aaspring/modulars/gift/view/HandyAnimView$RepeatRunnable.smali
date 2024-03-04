.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RepeatRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;",
        "Ljava/lang/Runnable;",
        "index",
        "",
        "list",
        "",
        "Landroid/graphics/PointF;",
        "clearOnEnd",
        "",
        "(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;ILjava/util/List;Z)V",
        "getClearOnEnd",
        "()Z",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "getList",
        "()Ljava/util/List;",
        "run",
        "",
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
.field private final clearOnEnd:Z

.field private index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;ILjava/util/List;Z)V
    .locals 1
    .param p2    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->index:I

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->list:Ljava/util/List;

    .line 4
    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->clearOnEnd:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;ILjava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;ILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final getClearOnEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->clearOnEnd:Z

    return v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->index:I

    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->list:Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->index:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->list:Ljava/util/List;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getCapturePointsListener()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->index:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getH$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x42

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->clearOnEnd:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable$run$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getDrawSteps$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setAnimating(Z)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getCapturePointsListener()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;->index:I

    return-void
.end method
