.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
        ">",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;"
    }
.end annotation


# instance fields
.field private mGroupId:Ljava/lang/String;

.field private mModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TM;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->mModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->mModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->mModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->mGroupId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TM;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->mModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    return-object v0
.end method

.method public bridge synthetic getWrappedMessage()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->getWrappedMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    return-object v0
.end method

.method public isOnlineMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public showNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
