.class public Lcom/tencent/imsdk/message/MessageKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clientTime:J

.field private groupID:Ljava/lang/String;

.field private isMessageSender:Z

.field private messageID:Ljava/lang/String;

.field private messageType:I

.field private random:J

.field private receiverTinyID:J

.field private receiverUserID:Ljava/lang/String;

.field private senderTinyID:J

.field private senderUserID:Ljava/lang/String;

.field private seq:J

.field private serverTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageKey;->clientTime:J

    return-wide v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageKey;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageKey;->messageID:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/MessageKey;->messageType:I

    return v0
.end method

.method public getRandom()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageKey;->random:J

    return-wide v0
.end method

.method public getReceiverTinyID()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageKey;->receiverTinyID:J

    return-wide v0
.end method

.method public getReceiverUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageKey;->receiverUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderTinyID()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageKey;->senderTinyID:J

    return-wide v0
.end method

.method public getSenderUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageKey;->senderUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageKey;->seq:J

    return-wide v0
.end method

.method public getServerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageKey;->serverTime:J

    return-wide v0
.end method

.method public isMessageSender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/MessageKey;->isMessageSender:Z

    return v0
.end method

.method public setClientTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageKey;->clientTime:J

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageKey;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setIsMessageSender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/MessageKey;->isMessageSender:Z

    return-void
.end method

.method public setMessageID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageKey;->messageID:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/MessageKey;->messageType:I

    return-void
.end method

.method public setRandom(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageKey;->random:J

    return-void
.end method

.method public setReceiverTinyID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageKey;->receiverTinyID:J

    return-void
.end method

.method public setReceiverUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageKey;->receiverUserID:Ljava/lang/String;

    return-void
.end method

.method public setSenderTinyID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageKey;->senderTinyID:J

    return-void
.end method

.method public setSenderUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageKey;->senderUserID:Ljava/lang/String;

    return-void
.end method

.method public setSeq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageKey;->seq:J

    return-void
.end method

.method public setServerTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageKey;->serverTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageKey--->"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "messageID:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/imsdk/message/MessageKey;->messageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/imsdk/message/MessageKey;->messageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMessageSender:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/imsdk/message/MessageKey;->isMessageSender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", senderUserID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/imsdk/message/MessageKey;->senderUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", receiverUserID:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/imsdk/message/MessageKey;->receiverUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/imsdk/message/MessageKey;->groupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientTime:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/imsdk/message/MessageKey;->clientTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serverTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/imsdk/message/MessageKey;->serverTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", seq:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/imsdk/message/MessageKey;->seq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", random:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/imsdk/message/MessageKey;->random:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
