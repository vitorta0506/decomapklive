.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;

.field content:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d026e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->a:Z

    return p0
.end method


# virtual methods
.method public e(Z)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->content:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->content:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;

    return-void
.end method
