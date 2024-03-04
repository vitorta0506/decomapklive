.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;->showJoinTips(Landroidx/fragment/app/Fragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $it1:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $memberViewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

.field final synthetic $viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$memberViewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$it1:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$memberViewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$it1:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    const-string v3, "it1"

    .line 4
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2$1$1;

    invoke-direct {v3, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2$1$1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v4, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2$1$2;

    invoke-direct {v4, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2$1$2;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->joinRoom(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    :cond_0
    return-void
.end method
