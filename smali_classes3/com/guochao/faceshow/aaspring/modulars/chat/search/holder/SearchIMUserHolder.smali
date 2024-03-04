.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;

.field userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
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

    const v1, 0x7f0d0274

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-object p0
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;ZLjava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->userName:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0d86

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a0dc5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;

    return-void
.end method
