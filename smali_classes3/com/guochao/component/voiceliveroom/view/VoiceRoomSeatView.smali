.class public final Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;,
        Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0001%B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0006\u0010\u001b\u001a\u00020\u001aJ\u0012\u0010\u001c\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000cH\u0002J\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010!\u001a\u00020\u001aH\u0002J\u0008\u0010\"\u001a\u00020\u001aH\u0002J\u0006\u0010#\u001a\u00020\u001aJ\u0010\u0010$\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000cR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "controllerFragment",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V",
        "lastSeatModel",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
        "getLastSeatModel",
        "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
        "setLastSeatModel",
        "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V",
        "seatIndex",
        "",
        "getSeatIndex",
        "()I",
        "setSeatIndex",
        "(I)V",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;",
        "checkClick",
        "",
        "playVoiceWave",
        "setInfo",
        "model",
        "setVoiceRoomLayoutMode",
        "layoutMode",
        "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;",
        "showSelfMenu",
        "stopVoiceWave",
        "stopVoiceWaveImmediatelysDelayed",
        "update",
        "LayoutMode",
        "component_liveroom_release"
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
.field private final controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private seatIndex:I

.field private final viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerFragment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    .line 4
    iput-object p4, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->seatIndex:I

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->setInfo(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V

    .line 8
    new-instance v3, Lcom/guochao/component/voiceliveroom/view/b;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/view/b;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->checkClick()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->_init_$lambda-0(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getViewModel$p(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object p0
.end method

.method private final checkClick()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v2

    const-string v5, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v5

    .line 3
    :cond_2
    iget-object v6, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    sget-object v7, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v0, :cond_16

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v2, 0x3

    const/4 v7, 0x4

    if-eq v0, v2, :cond_b

    if-eq v0, v7, :cond_5

    goto/16 :goto_d

    :cond_5
    if-eqz v6, :cond_6

    .line 4
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->showSelfMenu()V

    goto/16 :goto_d

    .line 5
    :cond_6
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, v1

    .line 6
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    :cond_a
    invoke-virtual {v0, v5, v1, v3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->showPeopleInfoCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 8
    :cond_b
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    invoke-static {v0, v3, v4, v3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomOwner()Z

    move-result v0

    if-ne v0, v4, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    invoke-static {v0, v3, v4, v3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomAdministrator()Z

    move-result v0

    if-ne v0, v4, :cond_d

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_e

    goto :goto_7

    .line 9
    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/guochao/component/liveroom/R$string;->voice_room_seat_locked:I

    invoke-static {v0, v2, v1, v7, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto/16 :goto_d

    .line 10
    :cond_f
    :goto_7
    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$string;->voice_room_unlock_seat_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026e_room_unlock_seat_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$2;->INSTANCE:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$2;

    new-instance v2, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$3;

    invoke-direct {v2, p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$3;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_d

    :cond_10
    if-eqz v6, :cond_11

    .line 14
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->showSelfMenu()V

    goto/16 :goto_d

    .line 15
    :cond_11
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    move-object v5, v1

    .line 16
    :cond_13
    :goto_8
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :cond_14
    move-object v1, v3

    :goto_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 17
    :cond_15
    invoke-virtual {v0, v5, v1, v3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->showPeopleInfoCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_d

    .line 18
    :cond_16
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    invoke-static {v0, v3, v4, v3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomOwner()Z

    move-result v0

    if-ne v0, v4, :cond_17

    const/4 v0, 0x1

    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    invoke-static {v0, v3, v4, v3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomAdministrator()Z

    move-result v0

    if-ne v0, v4, :cond_18

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_19

    goto :goto_c

    .line 19
    :cond_19
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;

    invoke-direct {v1, p0, v2}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_d

    .line 21
    :cond_1a
    :goto_c
    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;

    .line 22
    iget v3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->seatIndex:I

    .line 23
    invoke-virtual {v0, v2, v3, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;->newInstance(Ljava/lang/String;IZ)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "controllerFragment.parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method private final setInfo(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_mic:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->nickName:Landroid/widget/TextView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->seatIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "No. %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->coinArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->pendantView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->closeMicroIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->stopVoiceWave()V

    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v1, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    if-eq v3, v2, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->coinArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->coin:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 15
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 19
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->pendantView:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 22
    :cond_3
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->stopVoiceWave()V

    .line 23
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->closeMicroIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/component/liveroom/R$mipmap;->ic_voice_seat_locked:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->stopVoiceWave()V

    .line 27
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->closeMicroIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 28
    :cond_5
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v2, v2, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v2, v2, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->coinArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v2, v2, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->coin:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v2, v2, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 32
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 35
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 36
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->pendantView:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->closeMicroIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 40
    :cond_8
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->stopVoiceWave()V

    .line 42
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->closeMicroIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final showSelfMenu()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;->newInstance(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "controllerFragment.parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final stopVoiceWave()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->voiceWaveView:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->m()V

    return-void
.end method


# virtual methods
.method public final getLastSeatModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    return-object v0
.end method

.method public final getSeatIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->seatIndex:I

    return v0
.end method

.method public final playVoiceWave()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->voiceWaveView:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->voiceWaveView:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->l()V

    return-void
.end method

.method public final setLastSeatModel(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    return-void
.end method

.method public final setSeatIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->seatIndex:I

    return-void
.end method

.method public final setVoiceRoomLayoutMode(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42480000    # 50.0f

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    const/high16 v0, 0x42800000    # 64.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->pendantView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 11
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    const/high16 p1, 0x42700000    # 60.0f

    .line 13
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    const/high16 v0, 0x42960000    # 75.0f

    .line 14
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->roomStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 19
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->pendantView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 22
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    :goto_0
    return-void
.end method

.method public final stopVoiceWaveImmediatelysDelayed()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;->voiceWaveView:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->n()V

    return-void
.end method

.method public final update(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->lastSeatModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->setInfo(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V

    return-void
.end method
