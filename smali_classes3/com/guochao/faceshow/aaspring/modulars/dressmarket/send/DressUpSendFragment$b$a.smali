.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/holder/SpecHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->setSelect(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->y0()V

    :cond_3
    return-void
.end method
