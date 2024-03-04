.class public abstract Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;
.implements Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;
.implements Lu8/b;
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;
    }
.end annotation


# static fields
.field static final CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x64

.field public static final CHAT_DETAIL_REQUEST:I = 0x3e9

.field static final IMAGE_STORE:I = 0xc8

.field static final TAG:Ljava/lang/String; = "ChatActivity"

.field public static final TAG_PROFILE_CUSTOM_CHAT_SET:Ljava/lang/String; = "Tag_Profile_Custom_chatSet"


# instance fields
.field private isChatStatusRequesting:Z

.field private isShowedLimitDialog:Z

.field protected isTranslate:Z

.field protected isTranslateLanguage:Z

.field isfristData:Z

.field mChatBitmap:Landroid/graphics/Bitmap;

.field public mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

.field mChatPromt:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

.field public mChatUserId:Ljava/lang/String;

.field public mChatUserName:Ljava/lang/String;

.field public mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field mFirst:Z

.field mFromNewMatch:Z

.field protected mGiftAnimationDispatcher:Lj8/a;

.field mHasSendMessage:Z

.field mKeyword:Ljava/lang/String;

.field protected mOnPrefetchMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected otherLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mHasSendMessage:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslate:Z

    const-string v1, "us"

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isfristData:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isChatStatusRequesting:Z

    .line 7
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mFirst:Z

    return-void
.end method

.method static synthetic access$002(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isShowedLimitDialog:Z

    return p1
.end method

.method static synthetic access$102(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isChatStatusRequesting:Z

    return p1
.end method

.method private dontRemove(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "6391517"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "8875441"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected abstract checkSendEnable()V
.end method

.method public getChatStatus(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isChatStatusRequesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isChatStatusRequesting:Z

    const-string v1, "tokens/im/sendMsg/v2/checkStatus"

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    const-string v3, "accountId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "isIM"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;Z)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public initChatControl(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->j(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsShowAten()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatPromt:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatPromt:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHeaderSpace()V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_5

    const v0, 0x7f120171

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_5

    const v0, 0x7f120170

    .line 12
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 13
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_6

    const p1, 0x7f120172

    .line 14
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->checkSendEnable()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public abstract notifyData(Ljava/lang/String;Z)V
.end method

.method public abstract synthetic onCameraClick(Landroid/view/View;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->release()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isShowedLimitDialog:Z

    return-void
.end method

.method public abstract synthetic onGalleryClick(Landroid/view/View;)V
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mFirst:Z

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mFirst:Z

    return-void
.end method

.method public synthetic onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lu8/a;->b(Lu8/b;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method public synthetic onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lu8/a;->c(Lu8/b;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method protected abstract refreshEndIcon()V
.end method

.method public registerOnPrefetchMessageListener(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isNewConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mHasSendMessage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getIsDraft()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->dontRemove(Ljava/lang/String;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getIsDraft()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setNewConversation(Z)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R0(Z)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/manager/im/a;->H(Ljava/lang/String;)V

    .line 12
    :cond_3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->c()V

    .line 15
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mHasSendMessage:Z

    .line 16
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-void
.end method

.method public scrollToEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->scrollToEnd(Z)V

    return-void
.end method

.method public scrollToEnd(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->scrollToEnd(ZZ)V

    return-void
.end method

.method public abstract scrollToEnd(ZZ)V
.end method

.method public setHasRead()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHasRead(Z)V

    return-void
.end method

.method public setHasRead(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUnreadCount()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    :cond_1
    return-void
.end method

.method public setHeaderSpace()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    if-eqz v0, :cond_0

    const v1, 0x7f0a01e8

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->l(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unregisterOnPrefetchMessageListener(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
