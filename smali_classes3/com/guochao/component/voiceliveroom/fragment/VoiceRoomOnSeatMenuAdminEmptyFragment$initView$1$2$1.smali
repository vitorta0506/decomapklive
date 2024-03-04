.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->initView$lambda-3$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V
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
        "com/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1",
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1;->onNext(Lte/a;)V

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
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->access$getRoomId$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;

    .line 5
    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->access$getSeatIndex$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 6
    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->takeSeat(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method
