.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field divider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field joinNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field topicName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0336

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;->topicName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getPartakeTimes()I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;->joinNum:Landroid/widget/TextView;

    const v1, 0x7f12095f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;->joinNum:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1201f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "%s %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;->divider:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;->divider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
