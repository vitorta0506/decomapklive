.class public abstract Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->b(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;)I

    move-result v0

    .line 2
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$c;->getItemCount()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;I)I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setCurrentItem(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;I)I

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    return-void
.end method
