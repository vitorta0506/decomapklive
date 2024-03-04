.class public abstract Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# instance fields
.field private mReceiverId:Ljava/lang/String;

.field private mReceiverName:Ljava/lang/String;

.field private mSenderId:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method


# virtual methods
.method public getReceiverId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mReceiverId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mReceiverName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiverId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mReceiverId:Ljava/lang/String;

    return-void
.end method

.method public setReceiverName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mReceiverName:Ljava/lang/String;

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mSenderId:Ljava/lang/String;

    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->mSenderName:Ljava/lang/String;

    return-void
.end method
