.class Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object v0, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->l:Lcom/guochao/faceshow/views/PagingScrollHelper$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->g(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/PagingScrollHelper$c;->a(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->c(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result v0

    iput v0, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->f:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->e(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result v0

    iput v0, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->g:I

    return-void
.end method
