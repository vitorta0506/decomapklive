.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->initView$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
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
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
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
.field final synthetic $it:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->$it:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;)V
    .locals 6
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->getIconId()I

    move-result v0

    .line 3
    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_audio_effect:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p1

    const-string v0, "/app/liveroom_sound"

    invoke-virtual {p1, v0}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    :cond_0
    if-eqz v2, :cond_12

    .line 7
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "live_sound"

    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 9
    :cond_1
    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_manager:I

    if-ne v0, v1, :cond_3

    .line 10
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p1

    const-string v0, "/app/live_banned_list"

    invoke-virtual {p1, v0}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.lib_service_center.liveroom.service.LiveBannedListProxy"

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/lib_service_center/liveroom/service/LiveBannedListProxy;

    .line 13
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    .line 14
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "it2"

    .line 15
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v1, v0, v2}, Lcom/guochao/lib_service_center/liveroom/service/LiveBannedListProxy;->start(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto/16 :goto_3

    .line 18
    :cond_3
    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_mic_mode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_9

    .line 19
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v0

    if-ne v0, v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-nez v4, :cond_5

    return-void

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    if-nez v2, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v3, 0x1

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    new-instance v2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;

    invoke-direct {v2, p1, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)V

    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$4;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$4;

    invoke-static {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object p1

    .line 24
    invoke-virtual {v0, v3, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->changeMicMode(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    goto/16 :goto_3

    .line 25
    :cond_9
    sget p1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_more_select_private_mode:I

    if-ne v0, p1, :cond_f

    .line 26
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result p1

    if-ne p1, v5, :cond_a

    const/4 v4, 0x1

    :cond_a
    if-nez v4, :cond_b

    return-void

    .line 27
    :cond_b
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getNature()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 28
    :cond_c
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    if-nez v2, :cond_d

    goto :goto_2

    .line 29
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_e

    const/4 v3, 0x1

    .line 30
    :cond_e
    :goto_2
    iput v3, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 31
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    .line 32
    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 33
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;

    invoke-direct {v3, v2, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lkotlin/jvm/internal/Ref$IntRef;)V

    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$6;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$6;

    invoke-static {v2, v3, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object p1

    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->changeRoomPrivateMode(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    goto :goto_3

    .line 35
    :cond_f
    sget p1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_settings:I

    if-ne v0, p1, :cond_10

    .line 36
    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;->newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "setting"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_3

    .line 39
    :cond_10
    sget p1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_enter_fee:I

    if-ne v0, p1, :cond_12

    .line 40
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->$it:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    .line 41
    sget-object v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMemberPrice()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_11
    invoke-virtual {v1, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;->newInstance(Ljava/lang/Integer;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    move-result-object v0

    const-string v1, "memberFee"

    .line 42
    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_12
    :goto_3
    return-void
.end method
