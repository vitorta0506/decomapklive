.class public Lcom/guochao/faceshow/views/PagingScrollHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/PagingScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/PagingScrollHelper;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/views/PagingScrollHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->i(Lcom/guochao/faceshow/views/PagingScrollHelper;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->j(Lcom/guochao/faceshow/views/PagingScrollHelper;Z)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->c(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result v1

    iput v1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->f:I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->e(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result v1

    iput v1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->g:I

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$a;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->j(Lcom/guochao/faceshow/views/PagingScrollHelper;Z)Z

    :cond_2
    return v0
.end method
