.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->showQuitTips()V
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2;->invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->access$getMemberViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v2

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2$1$2;

    invoke-direct {v3, v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2$1$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4, v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle$default(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v0

    invoke-virtual {v2, p1, v1, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberRemove(Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    :cond_1
    return-void
.end method
