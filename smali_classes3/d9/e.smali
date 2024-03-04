.class public interface abstract Ld9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld9/e$a;
    }
.end annotation


# virtual methods
.method public abstract getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLinkMicStatusChanged(Z)V
.end method

.method public abstract onLiveFinish(ILjava/lang/String;)V
.end method

.method public abstract onNetworkLose(I)V
.end method

.method public abstract onNetworkResume(I)V
.end method

.method public abstract onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onPlaySuccess()V
.end method

.method public abstract onQuitLiveRoom(ZZ)V
.end method

.method public abstract onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
.end method

.method public abstract onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
.end method

.method public abstract onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onSelfMute(Z)V
.end method

.method public abstract onUserTypeChanged(I)V
.end method

.method public abstract sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendLiveMessage(Ljava/lang/String;Ld9/e$a;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendLiveMessageCmd(Ljava/lang/String;Ld9/e$a;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
