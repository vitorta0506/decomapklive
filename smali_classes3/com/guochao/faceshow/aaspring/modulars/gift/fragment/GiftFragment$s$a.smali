.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->notifySelectAllChanged()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reset()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;->a:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
