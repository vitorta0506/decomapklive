.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$userLeaveRoom$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->userLeaveRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
        "invoke",
        "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;)Ljava/lang/Boolean;"
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
.field final synthetic $model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$userLeaveRoom$1$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$userLeaveRoom$1$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$userLeaveRoom$1$1;->invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
