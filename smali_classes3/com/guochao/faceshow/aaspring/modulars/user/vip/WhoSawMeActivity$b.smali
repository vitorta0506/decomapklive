.class Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;->d0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a04f9

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
