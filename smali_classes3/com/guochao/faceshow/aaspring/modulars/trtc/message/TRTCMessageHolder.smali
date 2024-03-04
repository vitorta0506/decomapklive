.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->d(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->getParentFragment()Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->getParentFragment()Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->getParentFragment()Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_1

    const p1, 0x7f12015d

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const p1, 0x7f12015c

    .line 8
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    :goto_0
    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->g0()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAppointState()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAppointState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getImAudioAppointSwitch()I

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getImVideoAppointSwitch()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->J(Landroidx/fragment/app/FragmentActivity;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V

    goto :goto_1

    .line 15
    :cond_4
    sget-boolean v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->k:Z

    if-eqz v1, :cond_5

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getImAudioAppointSwitch()I

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getImVideoAppointSwitch()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->J(Landroidx/fragment/app/FragmentActivity;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private e(ILjava/lang/String;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->a:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->a:Landroid/widget/TextView;

    invoke-static {p3, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->appendSpannerRes(Landroid/widget/TextView;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 12

    const p1, 0x7f0a0cc4

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->a:Landroid/widget/TextView;

    const p1, 0x7f0a0774

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "trtc_type"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "call_time"

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_27

    .line 11
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    goto/16 :goto_1f

    .line 12
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-int p1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    const v3, 0x7f0f05fb

    const v4, 0x7f0f05fc

    const v5, 0x7f0f05f9

    const v6, 0x7f0f05fa

    const v7, 0x7f0603ce

    const v8, 0x7f06008b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1f

    .line 15
    :pswitch_0
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    const v0, 0x7f120908

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const v5, 0x7f0f05fa

    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0603ce

    goto :goto_2

    :cond_4
    const v1, 0x7f06008b

    :goto_2
    invoke-direct {p0, v5, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    .line 17
    :cond_5
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    if-eqz p1, :cond_27

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const v3, 0x7f0f05fc

    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    const v7, 0x7f06008b

    :goto_4
    invoke-direct {p0, v3, p1, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    goto/16 :goto_1f

    .line 19
    :pswitch_1
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    const v9, 0x7f120907

    if-eqz v0, :cond_a

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const v5, 0x7f0f05fa

    :goto_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/Object;

    int-to-long v10, p1

    invoke-static {v10, v11}, Lcom/guochao/faceshow/utils/TimeUtil;->getStringCallTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v1

    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v6

    if-eqz v6, :cond_9

    const v6, 0x7f0603ce

    goto :goto_6

    :cond_9
    const v6, 0x7f06008b

    :goto_6
    invoke-direct {p0, v5, v0, v6}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    .line 21
    :cond_a
    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    if-eqz p2, :cond_27

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_7

    :cond_b
    const v3, 0x7f0f05fc

    :goto_7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/guochao/faceshow/utils/TimeUtil;->getStringCallTime(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_8

    :cond_c
    const v7, 0x7f06008b

    :goto_8
    invoke-direct {p0, v3, p1, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    goto/16 :goto_1f

    .line 23
    :pswitch_2
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    const v9, 0x7f120906

    if-eqz v0, :cond_f

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    const v5, 0x7f0f05fa

    :goto_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/Object;

    int-to-long v10, p1

    invoke-static {v10, v11}, Lcom/guochao/faceshow/utils/TimeUtil;->getStringCallTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v1

    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v6

    if-eqz v6, :cond_e

    const v6, 0x7f0603ce

    goto :goto_a

    :cond_e
    const v6, 0x7f06008b

    :goto_a
    invoke-direct {p0, v5, v0, v6}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    .line 25
    :cond_f
    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    if-eqz p2, :cond_27

    .line 26
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_b

    :cond_10
    const v3, 0x7f0f05fc

    :goto_b
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/guochao/faceshow/utils/TimeUtil;->getStringCallTime(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_c

    :cond_11
    const v7, 0x7f06008b

    :goto_c
    invoke-direct {p0, v3, p1, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    goto/16 :goto_1f

    .line 27
    :pswitch_3
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    const v0, 0x7f12090b

    const v1, 0x7f12090c

    if-eqz p1, :cond_15

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_d

    :cond_12
    const v5, 0x7f0f05fa

    :goto_d
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f12090b

    goto :goto_e

    :cond_13
    const v2, 0x7f12090c

    :goto_e
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x7f0603ce

    goto :goto_f

    :cond_14
    const v2, 0x7f06008b

    .line 31
    :goto_f
    invoke-direct {p0, v5, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    .line 32
    :cond_15
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    if-eqz p1, :cond_27

    .line 33
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_10

    :cond_16
    const v3, 0x7f0f05fc

    :goto_10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_11

    :cond_17
    const v0, 0x7f12090c

    :goto_11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_12

    :cond_18
    const v7, 0x7f06008b

    .line 36
    :goto_12
    invoke-direct {p0, v3, p1, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    goto/16 :goto_1f

    .line 37
    :pswitch_4
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    const v0, 0x7f12090d

    const v1, 0x7f12090e

    if-eqz p1, :cond_1c

    .line 38
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_13

    :cond_19
    const v5, 0x7f0f05fa

    :goto_13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_1a

    const v2, 0x7f12090d

    goto :goto_14

    :cond_1a
    const v2, 0x7f12090e

    :goto_14
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_1b

    const v2, 0x7f0603ce

    goto :goto_15

    :cond_1b
    const v2, 0x7f06008b

    .line 41
    :goto_15
    invoke-direct {p0, v5, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    .line 42
    :cond_1c
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    if-eqz p1, :cond_27

    .line 43
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_16

    :cond_1d
    const v3, 0x7f0f05fc

    :goto_16
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_17

    :cond_1e
    const v0, 0x7f12090e

    :goto_17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_18

    :cond_1f
    const v7, 0x7f06008b

    .line 46
    :goto_18
    invoke-direct {p0, v3, p1, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    goto/16 :goto_1f

    .line 47
    :pswitch_5
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    const v0, 0x7f120909

    const v1, 0x7f12090a

    if-eqz p1, :cond_23

    .line 48
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_19

    :cond_20
    const v5, 0x7f0f05fa

    :goto_19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_21

    const v2, 0x7f120909

    goto :goto_1a

    :cond_21
    const v2, 0x7f12090a

    :goto_1a
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_22

    const v2, 0x7f0603ce

    goto :goto_1b

    :cond_22
    const v2, 0x7f06008b

    .line 51
    :goto_1b
    invoke-direct {p0, v5, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    .line 52
    :cond_23
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    if-eqz p1, :cond_27

    .line 53
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_1c

    :cond_24
    const v3, 0x7f0f05fc

    :goto_1c
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_1d

    :cond_25
    const v0, 0x7f12090a

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_26

    goto :goto_1e

    :cond_26
    const v7, 0x7f06008b

    .line 56
    :goto_1e
    invoke-direct {p0, v3, p1, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;->e(ILjava/lang/String;I)V

    :cond_27
    :goto_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;
    .locals 3
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

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->deleteCurrentMessage()V

    :goto_0
    return-void
.end method

.method public onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void
.end method
