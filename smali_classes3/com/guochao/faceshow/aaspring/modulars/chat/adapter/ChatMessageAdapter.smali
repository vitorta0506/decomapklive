.class public Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/imsdk/v2/V2TIMConversation;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field d:Landroid/view/LayoutInflater;

.field e:Lcom/guochao/faceshow/bean/UserBean;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

.field private g:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->c:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->d:Landroid/view/LayoutInflater;

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->e:Lcom/guochao/faceshow/bean/UserBean;

    return-void
.end method

.method private n(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;I)V
    .locals 1

    .line 1
    sget-object p3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->C2C_SEND_FSX1:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->getC2cPrivateChatMsgTips()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const p3, 0x7f0a0cc4

    .line 2
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->getC2cPrivateChatMsgTips()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    const v0, 0x7f1207d6

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->getC2cPrivateChatMsgTips()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    const p3, 0x7f120735

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->getC2cPrivateChatMsgTips()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->h(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void
.end method

.method public e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public f(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(ILjava/util/Collection;)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    return-void
.end method

.method protected h(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const v1, 0x7f0a0cc4

    .line 2
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getItemType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const p1, 0x7f120088

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getItemType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    const p1, 0x7f1200a2

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const v1, 0x7f0a0b96

    .line 7
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    if-lt v0, v2, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v7

    mul-long v7, v7, v3

    sub-long/2addr v5, v7

    invoke-static {v0, v5, v6}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 13
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v7

    mul-long v7, v7, v3

    sub-long/2addr v5, v7

    invoke-static {v0, v5, v6}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v7

    mul-long v7, v7, v3

    sub-long/2addr v5, v7

    invoke-static {v0, v5, v6}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    const v0, 0x7f0a0774

    .line 18
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_6
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    if-eqz v0, :cond_7

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->bindViews(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 22
    :cond_7
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;

    if-eqz v0, :cond_8

    .line 23
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->n(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;I)V

    :cond_8
    return-void
.end method

.method public i()Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->f:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    return-object v0
.end method

.method public j()Lcom/tencent/imsdk/v2/V2TIMConversation;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->a:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->g:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public l(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->f:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    return-void
.end method

.method public m(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->a:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-void
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->d:Landroid/view/LayoutInflater;

    invoke-static {v0, v1, p1, p2}, Li8/a;->e(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p1

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->bindAdapter(Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->b:Landroid/content/Context;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->bindChatActivity(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    :cond_0
    return-object p1
.end method

.method public setOnCheckDataListener(Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->g:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;

    return-void
.end method
