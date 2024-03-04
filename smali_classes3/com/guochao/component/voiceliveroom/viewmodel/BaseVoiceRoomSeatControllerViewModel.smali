.class public abstract Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\rH&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "enterTRTCRoom",
        "",
        "roomId",
        "",
        "voiceRoomSeatModel",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
        "linkMic",
        "",
        "seatIndex",
        "",
        "exitRoom",
        "leaveSeat",
        "takeSeat",
        "seatPosition",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    return-void
.end method

.method public static synthetic leaveSeat$default(Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;IILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;->leaveSeat(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: leaveSeat"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract enterTRTCRoom(Ljava/lang/String;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;ZI)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract exitRoom(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract leaveSeat(I)V
.end method

.method public abstract takeSeat(Ljava/lang/String;I)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
