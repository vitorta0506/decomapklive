.class Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->onFling(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->a(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->c(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->e(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    return-void
.end method
