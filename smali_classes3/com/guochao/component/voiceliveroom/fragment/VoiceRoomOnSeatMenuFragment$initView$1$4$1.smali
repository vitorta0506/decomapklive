.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->initView$lambda-4$lambda-3(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
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
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->invoke(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
    .locals 5
    .param p1    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$requireGCLiveRoomModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->access$getUser$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$1;

    invoke-direct {v3, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    sget-object v4, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$2;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$2;

    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v2

    invoke-static {v0, p1, v2, v1, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->openMicro$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$3;

    invoke-direct {v3, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$3;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    sget-object v4, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$4;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$4;

    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v2

    invoke-static {v0, p1, v2, v1, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->closeMicro$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
