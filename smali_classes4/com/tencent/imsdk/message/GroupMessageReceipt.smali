.class public Lcom/tencent/imsdk/message/GroupMessageReceipt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupID:Ljava/lang/String;

.field private msgID:Ljava/lang/String;

.field private readCount:J

.field private unreadCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->msgID:Ljava/lang/String;

    return-object v0
.end method

.method public getReadCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->readCount:J

    return-wide v0
.end method

.method public getUnreadCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->unreadCount:J

    return-wide v0
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setMsgID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->msgID:Ljava/lang/String;

    return-void
.end method

.method public setReadCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->readCount:J

    return-void
.end method

.method public setUnreadCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/GroupMessageReceipt;->unreadCount:J

    return-void
.end method
