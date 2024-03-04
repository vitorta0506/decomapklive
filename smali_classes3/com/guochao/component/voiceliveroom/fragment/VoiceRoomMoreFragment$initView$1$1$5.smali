.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $targetMode:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;->$targetMode:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 3

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$5;->$targetMode:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    new-instance v2, Lcom/guochao/component/voiceliveroom/event/VoiceRoomChangeModeEvent;

    .line 5
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 6
    invoke-direct {v2, v0, v1}, Lcom/guochao/component/voiceliveroom/event/VoiceRoomChangeModeEvent;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
