.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0012\u0010\r\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0017J\u0012\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0017J\u0012\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
        "",
        "getLayoutId",
        "",
        "initPkIcon",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "resetVoiceRoomChatList",
        "showGift",
        "showMore",
        "voiceSwitch",
        "onDestroyView",
        "Lo7/a;",
        "gcimMessage",
        "",
        "dispatchGCIMMessage",
        "Landroid/widget/ImageView;",
        "audioSwitch",
        "Landroid/widget/ImageView;",
        "getAudioSwitch",
        "()Landroid/widget/ImageView;",
        "setAudioSwitch",
        "(Landroid/widget/ImageView;)V",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel",
        "<init>",
        "()V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public audioSwitch:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment$viewModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->onViewCreated$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->resetVoiceRoomChatList$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->resetVoiceRoomChatList$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private static final onViewCreated$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->getAudioSwitch()Landroid/widget/ImageView;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private static final resetVoiceRoomChatList$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentVoiceRoomModel()Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentVoiceRoomModel()Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomAdministrator()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentVoiceRoomModel()Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomMember()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz p0, :cond_4

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    .line 5
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 6
    invoke-direct {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_2

    .line 9
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    .line 10
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v5, "LOCAL_VOICE_ROOM_JOIN_ROOM"

    .line 11
    invoke-direct {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 12
    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz p0, :cond_4

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    .line 15
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 16
    invoke-direct {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz p0, :cond_4

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    .line 20
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v3, "LOCAL_VOICE_ROOM_INVITE"

    .line 21
    invoke-direct {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static final resetVoiceRoomChatList$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->addFocusMessage()V

    return-void
.end method


# virtual methods
.method public dispatchGCIMMessage(Lo7/a;)Z
    .locals 17
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "gcimMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v2, v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-nez v2, :cond_1

    return v3

    .line 3
    :cond_1
    move-object v4, v1

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;

    .line 4
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;

    if-eqz v5, :cond_2

    .line 5
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v4, v5, v3, v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createAdminModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 9
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 10
    :cond_2
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 11
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v4, v5, v6, v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createAdminModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 16
    :cond_3
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    .line 17
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v5

    .line 18
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    .line 20
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;->getMiroType()I

    move-result v1

    if-ne v1, v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    .line 21
    :goto_0
    invoke-static {v4, v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLinkMicStatusChangeModel(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 22
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 23
    :cond_6
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDNatureModel;

    if-eqz v5, :cond_8

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDNatureModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDNatureModel;->getRoomId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 25
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDNatureModel;->getNature()I

    move-result v1

    if-ne v1, v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    .line 26
    :goto_1
    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createNatureChangeModel(Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 27
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 28
    :cond_8
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;

    if-eqz v5, :cond_a

    .line 29
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;->getToUserId()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;->getToNickName()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;->getToImg()Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-static {v3, v4, v5, v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createBanSomebodyTalkModel(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v4

    .line 33
    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 34
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;->getToUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    :cond_9
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentVoiceRoomModel()Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->setForbiddenMessage(Z)V

    .line 36
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onSelfMute(Z)V

    goto/16 :goto_5

    .line 37
    :cond_a
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;

    if-eqz v5, :cond_c

    .line 38
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;->getToUserId()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;->getToNickName()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;->getToImg()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-static {v6, v4, v5, v8}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createBanSomebodyTalkModel(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v4

    .line 42
    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 43
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;->getToUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    :cond_b
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentVoiceRoomModel()Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->setForbiddenMessage(Z)V

    .line 45
    invoke-virtual {v0, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onSelfMute(Z)V

    goto/16 :goto_5

    .line 46
    :cond_c
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;

    if-eqz v5, :cond_d

    .line 47
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 48
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;->getToUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;->getToNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;->getToImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    const-string v1, "TYPE_REMOVE_USER"

    .line 51
    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v5, "LIVE_REMOVE_USER"

    invoke-direct {v1, v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 53
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 54
    :cond_d
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;

    if-eqz v5, :cond_e

    .line 55
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;->getSmallImg()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;->getLevelId()I

    move-result v1

    .line 59
    invoke-static {v4, v5, v6, v7, v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createTobeMemberModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 60
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 61
    :cond_e
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;

    if-eqz v5, :cond_f

    .line 62
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createTakeSeatModel(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 63
    :cond_f
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;

    if-eqz v5, :cond_10

    .line 64
    new-instance v11, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v11}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 65
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 66
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getImg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getImg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 68
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getLevelId()I

    move-result v4

    iput v4, v11, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    .line 69
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    const/4 v10, 0x0

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120a46

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserType()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v8, "LIVE_ADD_GROUP"

    const-string v9, "TYPE_ADD_GROUP"

    .line 72
    invoke-static/range {v8 .. v16}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createChatMessage(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/bean/UserBean;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 73
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 74
    :cond_10
    instance-of v5, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;

    if-eqz v5, :cond_13

    .line 75
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_11
    move-object v6, v7

    :goto_2
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;->getOperateUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    :cond_12
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 78
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v4, v5, v3, v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createMemberModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 82
    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto/16 :goto_5

    .line 83
    :cond_13
    instance-of v2, v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;

    if-eqz v2, :cond_18

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v4}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_14
    move-object v4, v7

    :goto_3
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "requireContext()"

    if-eqz v2, :cond_15

    .line 86
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 87
    new-instance v2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment$dispatchGCIMMessage$dialog$1$1;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment$dispatchGCIMMessage$dialog$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    invoke-static {v1, v7, v2, v6, v7}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object v7

    goto :goto_4

    .line 90
    :cond_15
    new-instance v1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v2, 0x7f120a87

    .line 91
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "getString(com.guochao.co\u2026e_room_room_toast_frozen)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment$dispatchGCIMMessage$dialog$2;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment$dispatchGCIMMessage$dialog$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    invoke-static {v1, v7, v2, v6, v7}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object v7

    :cond_16
    :goto_4
    if-eqz v7, :cond_17

    .line 94
    invoke-virtual {v7, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_17
    if-eqz v7, :cond_18

    .line 95
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :cond_18
    :goto_5
    return v3
.end method

.method public final getAudioSwitch()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->audioSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "audioSwitch"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e9

    return v0
.end method

.method public initPkIcon()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->multiGame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/gc_message_dispatchers"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;->unregisterDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/d;->a(Ld9/e;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onSelectGift(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Lu8/a;->a(Lu8/b;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lu8/a;->b(Lu8/b;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const v0, 0x7f0a03b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->v5(Landroid/view/ViewGroup;)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getAudioSwitch()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/y;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/y;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public resetVoiceRoomChatList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-direct {v0, v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ld9/g;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/gc_message_dispatchers"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;->registerDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->l()V

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120a94

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createNoticModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/z;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/z;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setAudioSwitch(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->audioSwitch:Landroid/widget/ImageView;

    return-void
.end method

.method public showGift(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string p1, "currentLiveRoom.liveRoomId"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;->newInstance$default(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/model/GCUser;IIILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showMore(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAdministrator()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;->newInstance(Z)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "more"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final voiceSwitch(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->audioSwitchClick()V

    return-void
.end method
