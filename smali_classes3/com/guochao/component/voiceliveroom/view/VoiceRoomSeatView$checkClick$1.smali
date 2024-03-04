.class public final Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->checkClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1",
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;",
        "Lte/a;",
        "o",
        "",
        "onNext",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $roomId:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;->this$0:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;->$roomId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 2
    .param p1    # Lte/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-boolean p1, p1, Lte/a;->b:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;->this$0:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->access$getViewModel$p(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;->$roomId:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$checkClick$1;->this$0:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->getSeatIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->takeSeat(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method
