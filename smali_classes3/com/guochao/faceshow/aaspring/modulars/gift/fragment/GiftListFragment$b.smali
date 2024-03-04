.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->l2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)I

    move-result v0

    invoke-static {v0}, Lt8/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method
