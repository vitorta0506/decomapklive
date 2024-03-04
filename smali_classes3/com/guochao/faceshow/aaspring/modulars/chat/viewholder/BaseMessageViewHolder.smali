.class public abstract Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0xaf

.field public static final MIN_SIZE:I = 0x78


# instance fields
.field public mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

.field private mAvatarClick:Landroid/view/View$OnClickListener;

.field mChatActivity:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

.field final mContext:Landroid/content/Context;

.field public final mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field private mMaxSize:I

.field public mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field private mMinSize:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRetryClickListener:Landroid/view/View$OnClickListener;

.field mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

.field mUserBean:Lcom/guochao/faceshow/bean/UserBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mRetryClickListener:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAvatarClick:Landroid/view/View$OnClickListener;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 6
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 7
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->g0()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 9
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    const/high16 p2, 0x432f0000    # 175.0f

    .line 10
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMaxSize:I

    const/high16 p2, 0x42f00000    # 120.0f

    .line 11
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMinSize:I

    return-void
.end method


# virtual methods
.method public bindAdapter(Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->j()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-void
.end method

.method public bindChatActivity(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mChatActivity:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    return-void
.end method

.method public bindViews(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 13

    .line 1
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    const v0, 0x7f0a0425

    .line 2
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v1

    const-string v2, "#F4C954"

    const v3, 0x7f0f0122

    const/4 v4, 0x2

    const-string v5, "#FFFFFF"

    const/4 v6, 0x1

    const v7, 0x7f0a0512

    const/16 v8, 0x8

    if-eqz v1, :cond_f

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isPeerRead()Z

    move-result v1

    const v9, 0x7f0a093c

    .line 5
    invoke-virtual {p0, v9}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 6
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v11}, Lcom/guochao/faceshow/bean/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v12}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v12

    invoke-static {v1, v11, v12}, Lhc/a;->e(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isMvpConversation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_7

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipAvatarPendentType()I

    move-result v1

    if-eq v1, v6, :cond_5

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipAvatarPendentType()I

    move-result v1

    if-ne v1, v4, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    goto :goto_2

    .line 16
    :cond_5
    :goto_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    goto :goto_2

    .line 17
    :cond_6
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    .line 18
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :goto_3
    const v0, 0x7f0a0a62

    .line 19
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a59

    .line 20
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mRetryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isErrorMsg()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_b

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-eqz v1, :cond_a

    .line 24
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v9, :cond_17

    .line 25
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_b
    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    .line 26
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result v2

    if-eq v2, v6, :cond_e

    if-eq v2, v4, :cond_d

    const/4 v4, 0x3

    if-eq v2, v4, :cond_c

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 29
    :cond_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v9, :cond_17

    .line 31
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 32
    :cond_d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 34
    :cond_e
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v9, :cond_17

    .line 36
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 37
    :cond_f
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 38
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 39
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isMvpConversation()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 40
    invoke-virtual {p0, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatar()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getGender()I

    move-result v10

    invoke-static {v1, v9, v10, v6}, Lhc/a;->f(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_4

    .line 41
    :cond_10
    invoke-virtual {p0, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatar()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getGender()I

    move-result v10

    invoke-static {v1, v9, v10}, Lhc/a;->e(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_11
    :goto_4
    if-eqz v0, :cond_12

    .line 42
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isMvpConversation()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 43
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_12
    if-eqz v0, :cond_16

    .line 44
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 45
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipAvatarPendentType()I

    move-result v1

    if-eq v1, v6, :cond_14

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipAvatarPendentType()I

    move-result v1

    if-ne v1, v4, :cond_13

    goto :goto_5

    .line 46
    :cond_13
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    goto :goto_6

    .line 47
    :cond_14
    :goto_5
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    goto :goto_6

    .line 48
    :cond_15
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    .line 49
    :cond_16
    :goto_6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_17
    :goto_7
    const v0, 0x7f0a0774

    .line 50
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 51
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    :cond_18
    invoke-virtual {p0, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 54
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_19
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void
.end method

.method public clearMessageContentBackground()V
    .locals 3

    const v0, 0x7f0a0774

    .line 1
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public deleteCurrentMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->remove()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isErrorMsg()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocalCustomInt()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelf()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    return v0
.end method

.method public makeViewSize(Landroid/view/View;II)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-lt p2, p3, :cond_2

    .line 1
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMaxSize:I

    if-le p2, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMinSize:I

    if-ge p2, v3, :cond_1

    move v2, v3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    int-to-double v3, v2

    mul-double v3, v3, v0

    int-to-double v0, p2

    div-double/2addr v3, v0

    int-to-double p2, p3

    mul-double v3, v3, p2

    double-to-int p2, v3

    .line 4
    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMinSize:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_2

    .line 5
    :cond_2
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMaxSize:I

    if-le p3, v2, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMinSize:I

    if-ge p3, v3, :cond_4

    move v2, v3

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    int-to-double v3, v2

    mul-double v3, v3, v0

    int-to-double v0, p3

    div-double/2addr v3, v0

    int-to-double p2, p2

    mul-double v3, v3, p2

    double-to-int p2, v3

    .line 8
    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMinSize:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v5, v2

    move v2, p2

    move p2, v5

    .line 9
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 10
    iput v2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAvatarClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const-class v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSender()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public abstract onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end method

.method public onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    return-void
.end method

.method public onMessageContentLongClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setMenus(Ljava/util/List;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setOnMenuItemClickListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method resendMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->copyOf()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->remove()V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mChatActivity:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v1, :cond_2

    .line 7
    instance-of v3, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v3, :cond_1

    .line 8
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendText(Ljava/lang/String;Z)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public revokeCurrentMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->revokeMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method
