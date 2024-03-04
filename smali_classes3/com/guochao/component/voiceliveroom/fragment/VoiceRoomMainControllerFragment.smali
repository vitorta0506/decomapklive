.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0013H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;",
        "()V",
        "loadingHide",
        "",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;)V",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private loadingHide:Z

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$viewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->initView$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getResponseCode()I

    move-result v0

    const/16 v1, 0x3e9

    const-string v2, "requireContext()"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getResponseCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getResponseCode()I

    move-result v0

    const/16 v1, 0x1389

    if-ne v0, v1, :cond_2

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    sget v0, Lcom/guochao/component/liveroom/R$string;->voice_room_no_room:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.voice_room_no_room)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$dialog$2;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$dialog$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    invoke-static {p1, v5, v0, v4, v5}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getResponseCode()I

    move-result v0

    const/16 v1, 0x22b8

    if-ne v0, v1, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v1}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v5

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getFreezeReason()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_4
    sget p1, Lcom/guochao/component/liveroom/R$string;->voice_room_room_toast_frozen:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{\n                    ge\u2026frozen)\n                }"

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$dialog$3;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$dialog$3;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    invoke-static {p1, v5, v0, v4, v5}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    .line 16
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 18
    :cond_5
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$1;

    invoke-direct {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$1;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    invoke-virtual {p0, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    .line 19
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getKickEndTime()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_6
    move-wide v6, v1

    :goto_2
    cmp-long v0, v6, v1

    if-lez v0, :cond_7

    .line 20
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$2;

    invoke-direct {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$2;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    invoke-virtual {p0, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireLiveRoomViewController(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 21
    :cond_7
    invoke-static {p0, v5, v4, v5}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBanEndTime()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_9
    move-wide v5, v1

    :goto_3
    cmp-long v7, v5, v1

    if-lez v7, :cond_a

    const/4 v3, 0x1

    :cond_a
    invoke-virtual {v0, v3}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setForbiddenMessage(Z)V

    .line 22
    :goto_4
    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->loadingHide:Z

    if-nez v0, :cond_b

    .line 23
    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;

    invoke-virtual {p0, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireLiveRoomViewController(Lkotlin/jvm/functions/Function1;)V

    .line 24
    :cond_b
    iput-boolean v4, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->loadingHide:Z

    .line 25
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;->voiceRoomSeatControllerView:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;

    .line 26
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :cond_c
    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->updateSeats(Ljava/util/List;)V

    return-void

    .line 28
    :cond_d
    :goto_5
    new-instance p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    sget v0, Lcom/guochao/component/liveroom/R$string;->voice_room_private_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.voice_room_private_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$dialog$1;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$dialog$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    invoke-static {p1, v5, v0, v4, v5}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    .line 31
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final newInstance(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;
    .locals 1
    .param p0    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;->newInstance(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;->voiceRoomSeatControllerView:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;

    invoke-virtual {p1, p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->attachController(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/p;

    invoke-direct {p2, p0}, Lcom/guochao/component/voiceliveroom/fragment/p;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    new-instance p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$3;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$3;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->checkLeaveRoom()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->destroyCurrentRoom()V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;

    return-void
.end method
