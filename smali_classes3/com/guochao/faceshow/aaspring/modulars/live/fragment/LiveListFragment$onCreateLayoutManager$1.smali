.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "position",
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
.field final synthetic $span:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;->$span:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;->$span:I

    :cond_1
    return v1
.end method
