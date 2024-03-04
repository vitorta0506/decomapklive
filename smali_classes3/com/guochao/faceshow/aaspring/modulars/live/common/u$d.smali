.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Handler;Ld9/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic c:Ld9/i;

.field final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Ld9/i;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->c:Ld9/i;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->c:Ld9/i;

    invoke-interface {v0}, Ld9/i;->onCallback()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
