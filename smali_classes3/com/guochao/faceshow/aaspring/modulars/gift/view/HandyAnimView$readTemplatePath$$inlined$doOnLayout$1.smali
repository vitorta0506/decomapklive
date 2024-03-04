.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->readTemplatePath(Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V
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
.field final synthetic $handyGiftPathData$inlined:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->$handyGiftPathData$inlined:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getH$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->$handyGiftPathData$inlined:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$setGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getDrawSteps$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->$handyGiftPathData$inlined:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->getGiftPathList()Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;

    .line 9
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;->getGiftCount()I

    move-result p5

    invoke-static {p4, p3, p5}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$pathToPoints(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;I)Ljava/util/List;

    move-result-object p3

    .line 10
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->playPoints(Ljava/util/List;IIZ)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
