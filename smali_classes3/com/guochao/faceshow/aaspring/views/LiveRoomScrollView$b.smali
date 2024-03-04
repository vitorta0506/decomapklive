.class Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->j(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->i:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

    if-eqz v1, :cond_0

    .line 6
    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    invoke-interface {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;->a(II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    .line 8
    iput v2, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    :cond_1
    return-void
.end method
