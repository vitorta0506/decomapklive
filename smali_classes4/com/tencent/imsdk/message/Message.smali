.class public Lcom/tencent/imsdk/message/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static MESSAGE_TYPE_C2C:I = 0x1

.field public static MESSAGE_TYPE_GROUP:I = 0x2

.field public static MESSAGE_TYPE_MULTI_SYNC:I = 0x3

.field public static MESSAGE_TYPE_UNKNOWN:I = 0x0

.field public static PLATFORM_ANDROID:I = 0x2

.field public static PLATFORM_IOS:I = 0x3

.field public static PLATFORM_MAC:I = 0x4

.field public static PLATFORM_OTHER:I = 0x0

.field public static PLATFORM_SIMULATOR:I = 0x5

.field public static PLATFORM_WINDOWS:I = 0x1

.field public static final V2TIM_MSG_STATUS_DELETED:I = 0x4

.field public static final V2TIM_MSG_STATUS_LOCAL_IMPORTED:I = 0x5

.field public static final V2TIM_MSG_STATUS_REVOKED:I = 0x6

.field public static final V2TIM_MSG_STATUS_SENDING:I = 0x1

.field public static final V2TIM_MSG_STATUS_SEND_FAILED:I = 0x3

.field public static final V2TIM_MSG_STATUS_SUCCESS:I = 0x2


# instance fields
.field private clientTime:J

.field private cloudCustomBytes:[B

.field private excludedFromLastMessage:Z

.field private excludedFromUnreadCount:Z

.field private faceUrl:Ljava/lang/String;

.field private friendRemark:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private hasSentReceipt:Z

.field private isBroadcastMessage:Z

.field private isForward:Z

.field private isMessageSender:Z

.field private isPeerRead:Z

.field private isSelfRead:Z

.field private lifeTime:I

.field private localCustomNumber:I

.field private localCustomString:Ljava/lang/String;

.field private messageBaseElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageBaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private messageGroupAtInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageAtInfo;",
            ">;"
        }
    .end annotation
.end field

.field private messageStatus:I

.field private messageType:I

.field private messageVersion:J

.field private msgID:Ljava/lang/String;

.field private nameCard:Ljava/lang/String;

.field private needReadReceipt:Z

.field private nickName:Ljava/lang/String;

.field private offlinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

.field private platform:I

.field private priority:I

.field private random:J

.field private receiptPeerRead:Z

.field private receiptReadCount:I

.field private receiptUnreadCount:I

.field private receiverTinyID:J

.field private receiverUserID:Ljava/lang/String;

.field private revokerTinyID:J

.field private revokerUserID:Ljava/lang/String;

.field private senderTinyID:J

.field private senderUserID:Ljava/lang/String;

.field private seq:J

.field private serverTime:J

.field private supportMessageExtension:Z

.field private targetGroupMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/imsdk/message/Message;->msgID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isMessageSender:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/tencent/imsdk/message/Message;->lifeTime:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/message/Message;->messageBaseElements:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/message/Message;->messageGroupAtInfoList:Ljava/util/List;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/tencent/imsdk/message/Message;->excludedFromUnreadCount:Z

    .line 8
    iput-boolean v1, p0, Lcom/tencent/imsdk/message/Message;->excludedFromLastMessage:Z

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/imsdk/message/Message;->targetGroupMemberList:Ljava/util/List;

    .line 10
    iput-boolean v1, p0, Lcom/tencent/imsdk/message/Message;->needReadReceipt:Z

    .line 11
    iput-boolean v1, p0, Lcom/tencent/imsdk/message/Message;->hasSentReceipt:Z

    .line 12
    iput v1, p0, Lcom/tencent/imsdk/message/Message;->receiptReadCount:I

    .line 13
    iput v0, p0, Lcom/tencent/imsdk/message/Message;->receiptUnreadCount:I

    .line 14
    iput-boolean v1, p0, Lcom/tencent/imsdk/message/Message;->supportMessageExtension:Z

    .line 15
    iput-boolean v1, p0, Lcom/tencent/imsdk/message/Message;->isBroadcastMessage:Z

    return-void
.end method


# virtual methods
.method public addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->messageBaseElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addMessageGroupAtInfo(Lcom/tencent/imsdk/message/MessageAtInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->messageGroupAtInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getClientTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/Message;->clientTime:J

    return-wide v0
.end method

.method public getCloudCustomString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->cloudCustomBytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->friendRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getLifeTime()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->lifeTime:I

    return v0
.end method

.method public getLocalCustomNumber()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->localCustomNumber:I

    return v0
.end method

.method public getLocalCustomString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->localCustomString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBaseElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageBaseElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->messageBaseElements:Ljava/util/List;

    return-object v0
.end method

.method public getMessageGroupAtInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageAtInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->messageGroupAtInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getMessageKey()Lcom/tencent/imsdk/message/MessageKey;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/message/MessageKey;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/MessageKey;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/imsdk/message/Message;->msgID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageKey;->setMessageID(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/tencent/imsdk/message/Message;->messageType:I

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageKey;->setMessageType(I)V

    .line 4
    iget-boolean v1, p0, Lcom/tencent/imsdk/message/Message;->isMessageSender:Z

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageKey;->setIsMessageSender(Z)V

    .line 5
    iget-object v1, p0, Lcom/tencent/imsdk/message/Message;->senderUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageKey;->setSenderUserID(Ljava/lang/String;)V

    .line 6
    iget-wide v1, p0, Lcom/tencent/imsdk/message/Message;->senderTinyID:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageKey;->setSenderTinyID(J)V

    .line 7
    iget-object v1, p0, Lcom/tencent/imsdk/message/Message;->receiverUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageKey;->setReceiverUserID(Ljava/lang/String;)V

    .line 8
    iget-wide v1, p0, Lcom/tencent/imsdk/message/Message;->receiverTinyID:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageKey;->setReceiverTinyID(J)V

    .line 9
    iget-object v1, p0, Lcom/tencent/imsdk/message/Message;->groupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageKey;->setGroupID(Ljava/lang/String;)V

    .line 10
    iget-wide v1, p0, Lcom/tencent/imsdk/message/Message;->clientTime:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageKey;->setClientTime(J)V

    .line 11
    iget-wide v1, p0, Lcom/tencent/imsdk/message/Message;->serverTime:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageKey;->setServerTime(J)V

    .line 12
    iget-wide v1, p0, Lcom/tencent/imsdk/message/Message;->seq:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageKey;->setSeq(J)V

    .line 13
    iget-wide v1, p0, Lcom/tencent/imsdk/message/Message;->random:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageKey;->setRandom(J)V

    return-object v0
.end method

.method public getMessageStatus()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->messageStatus:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->messageType:I

    return v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->msgID:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCard()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->nameCard:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflinePushInfo()Lcom/tencent/imsdk/message/MessageOfflinePushInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->offlinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->platform:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->priority:I

    return v0
.end method

.method public getRandom()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/Message;->random:J

    return-wide v0
.end method

.method public getReceiptReadCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->receiptReadCount:I

    return v0
.end method

.method public getReceiptUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/Message;->receiptUnreadCount:I

    return v0
.end method

.method public getReceiverUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->receiverUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getRevokerUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->revokerUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->senderUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/Message;->seq:J

    return-wide v0
.end method

.method public getTargetGroupMemberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->targetGroupMemberList:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/imsdk/message/Message;->serverTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/tencent/imsdk/message/Message;->clientTime:J

    return-wide v0
.end method

.method public isBroadcastMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isBroadcastMessage:Z

    return v0
.end method

.method public isExcludedFromLastMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->excludedFromLastMessage:Z

    return v0
.end method

.method public isExcludedFromUnreadCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->excludedFromUnreadCount:Z

    return v0
.end method

.method public isForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isForward:Z

    return v0
.end method

.method public isHasSentReceipt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->hasSentReceipt:Z

    return v0
.end method

.method public isMessageSender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isMessageSender:Z

    return v0
.end method

.method public isNeedReadReceipt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->needReadReceipt:Z

    return v0
.end method

.method public isPeerRead()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isPeerRead:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageCenter;->isMessagePeerRead(Lcom/tencent/imsdk/message/MessageKey;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isPeerRead:Z

    return v0
.end method

.method public isReceiptPeerRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->receiptPeerRead:Z

    return v0
.end method

.method public isSelfRead()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isSelfRead:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageCenter;->isMessageSelfRead(Lcom/tencent/imsdk/message/MessageKey;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isSelfRead:Z

    return v0
.end method

.method public isSupportMessageExtension()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->supportMessageExtension:Z

    return v0
.end method

.method public setClientTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/Message;->clientTime:J

    return-void
.end method

.method public setCloudCustomString(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->cloudCustomBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setExcludedFromLastMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/Message;->excludedFromLastMessage:Z

    return-void
.end method

.method public setExcludedFromUnreadCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/Message;->excludedFromUnreadCount:Z

    return-void
.end method

.method public setForward(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/Message;->isForward:Z

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setHasSentReceipt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/Message;->hasSentReceipt:Z

    return-void
.end method

.method public setIsMessageSender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/Message;->isMessageSender:Z

    return-void
.end method

.method public setLifeTime(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/Message;->lifeTime:I

    return-void
.end method

.method public setLocalCustomNumber(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/imsdk/message/Message;->localCustomNumber:I

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/imsdk/message/MessageCenter;->setLocalCustomNumber(Lcom/tencent/imsdk/message/Message;I)V

    return-void
.end method

.method public setLocalCustomString(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->localCustomString:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/imsdk/message/MessageCenter;->setLocalCustomString(Lcom/tencent/imsdk/message/Message;Ljava/lang/String;)V

    return-void
.end method

.method public setMessageBaseElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageBaseElement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->messageBaseElements:Ljava/util/List;

    return-void
.end method

.method public setMessageGroupAtInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageAtInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->messageGroupAtInfoList:Ljava/util/List;

    return-void
.end method

.method public setMessageStatus(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/Message;->messageStatus:I

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/Message;->messageType:I

    return-void
.end method

.method public setNeedReadReceipt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/Message;->needReadReceipt:Z

    return-void
.end method

.method public setOfflinePushInfo(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->offlinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    return-void
.end method

.method public setPlatform(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/Message;->platform:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/Message;->priority:I

    return-void
.end method

.method public setReceiptReadCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/Message;->receiptReadCount:I

    return-void
.end method

.method public setReceiptUnreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/Message;->receiptUnreadCount:I

    return-void
.end method

.method public setReceiverUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->receiverUserID:Ljava/lang/String;

    return-void
.end method

.method public setSenderUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->senderUserID:Ljava/lang/String;

    return-void
.end method

.method public setSupportMessageExtension(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/Message;->supportMessageExtension:Z

    return-void
.end method

.method public setTargetGroupMemberList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/message/Message;->targetGroupMemberList:Ljava/util/List;

    return-void
.end method

.method public update(Lcom/tencent/imsdk/message/Message;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/tencent/imsdk/message/Message;->msgID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/Message;->msgID:Ljava/lang/String;

    .line 2
    iget v0, p1, Lcom/tencent/imsdk/message/Message;->messageType:I

    iput v0, p0, Lcom/tencent/imsdk/message/Message;->messageType:I

    .line 3
    iget-boolean v0, p1, Lcom/tencent/imsdk/message/Message;->isMessageSender:Z

    iput-boolean v0, p0, Lcom/tencent/imsdk/message/Message;->isMessageSender:Z

    .line 4
    iget-object v0, p1, Lcom/tencent/imsdk/message/Message;->senderUserID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/Message;->senderUserID:Ljava/lang/String;

    .line 5
    iget-wide v0, p1, Lcom/tencent/imsdk/message/Message;->senderTinyID:J

    iput-wide v0, p0, Lcom/tencent/imsdk/message/Message;->senderTinyID:J

    .line 6
    iget-object v0, p1, Lcom/tencent/imsdk/message/Message;->receiverUserID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/Message;->receiverUserID:Ljava/lang/String;

    .line 7
    iget-wide v0, p1, Lcom/tencent/imsdk/message/Message;->receiverTinyID:J

    iput-wide v0, p0, Lcom/tencent/imsdk/message/Message;->receiverTinyID:J

    .line 8
    iget-object v0, p1, Lcom/tencent/imsdk/message/Message;->groupID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/Message;->groupID:Ljava/lang/String;

    .line 9
    iget-wide v0, p1, Lcom/tencent/imsdk/message/Message;->clientTime:J

    iput-wide v0, p0, Lcom/tencent/imsdk/message/Message;->clientTime:J

    .line 10
    iget-wide v0, p1, Lcom/tencent/imsdk/message/Message;->serverTime:J

    iput-wide v0, p0, Lcom/tencent/imsdk/message/Message;->serverTime:J

    .line 11
    iget-wide v0, p1, Lcom/tencent/imsdk/message/Message;->seq:J

    iput-wide v0, p0, Lcom/tencent/imsdk/message/Message;->seq:J

    .line 12
    iget-wide v0, p1, Lcom/tencent/imsdk/message/Message;->random:J

    iput-wide v0, p0, Lcom/tencent/imsdk/message/Message;->random:J

    .line 13
    iget v0, p1, Lcom/tencent/imsdk/message/Message;->messageStatus:I

    iput v0, p0, Lcom/tencent/imsdk/message/Message;->messageStatus:I

    .line 14
    iget-object v0, p0, Lcom/tencent/imsdk/message/Message;->messageBaseElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/message/MessageBaseElement;

    .line 15
    iget-object v2, p1, Lcom/tencent/imsdk/message/Message;->messageBaseElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/message/MessageBaseElement;

    .line 16
    invoke-virtual {v1, v3}, Lcom/tencent/imsdk/message/MessageBaseElement;->update(Lcom/tencent/imsdk/message/MessageBaseElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    return-void
.end method
