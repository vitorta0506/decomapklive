.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/holder/SpecHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;

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

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->f:Ljava/util/List;

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
