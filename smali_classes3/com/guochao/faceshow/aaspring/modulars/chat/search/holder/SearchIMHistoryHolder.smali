.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field chatRecord:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field timeHistory:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatar:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userFlag:Lcom/guochao/faceshow/views/NormalCircleImageView;
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

    const v1, 0x7f0d0270

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;ZLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->userDivider:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->userFlag:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->userFlag:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->chatRecord:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, ""

    .line 9
    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->chatRecord:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {p2, p3, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setCutSpannerString(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->userAvatar:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getGender()I

    move-result v2

    invoke-static {p2, v1, v2}, Lhc/a;->e(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2

    if-nez p2, :cond_4

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->userFlag:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0122

    invoke-static {p2, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 15
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    goto :goto_4

    :cond_6
    :goto_3
    const-wide/16 v1, 0x0

    .line 17
    :goto_4
    invoke-static {p2, v1, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->timeHistory:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
