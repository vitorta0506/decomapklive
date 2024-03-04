.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userSign:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
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

    const v1, 0x7f0d0272

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->userName:Landroid/widget/TextView;

    const v2, 0x7f06006a

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, p2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->userSign:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1209bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSignature()Ljava/lang/String;

    move-result-object v3

    .line 6
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->userSign:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
