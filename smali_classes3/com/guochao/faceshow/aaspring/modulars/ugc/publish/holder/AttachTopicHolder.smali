.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

.field private b:I

.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;

.field topicName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->topicName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->b:I

    return p0
.end method


# virtual methods
.method public f(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->b:I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->topicName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;

    return-void
.end method
