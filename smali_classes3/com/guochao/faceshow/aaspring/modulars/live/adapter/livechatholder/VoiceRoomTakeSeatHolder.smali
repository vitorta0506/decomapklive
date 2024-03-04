.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "view",
        "Landroid/view/View;",
        "fragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
        "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LayoutVoiceRoomTakeSeatBinding;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomTakeSeatBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomTakeSeatBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutVoiceRoomTakeSeatBinding;

    move-result-object p1

    const-string v0, "bind(view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomTakeSeatBinding;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomTakeSeatBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/f;

    invoke-direct {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "$fragment"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B2()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fragment.currentLiveRoom.liveRoomId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->takeSeat(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    const/4 p1, -0x2

    if-nez p0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_3

    const p0, 0x7f120a97

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 4
    invoke-static {v1, p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;->_init_$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    return-void
.end method
