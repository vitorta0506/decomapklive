.class public Lcom/tencent/imsdk/message/MessageListGetOption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:I

.field private getCloudMessage:Z

.field private getTimeBegin:J

.field private getTimePeriod:J

.field private messageKey:Lcom/tencent/imsdk/message/MessageKey;

.field private messageTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private toOlderMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->count:I

    return v0
.end method

.method public getGetTimeBegin()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->getTimeBegin:J

    return-wide v0
.end method

.method public getGetTimePeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->getTimePeriod:J

    return-wide v0
.end method

.method public getMessageKey()Lcom/tencent/imsdk/message/MessageKey;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->messageKey:Lcom/tencent/imsdk/message/MessageKey;

    return-object v0
.end method

.method public isGetCloudMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->getCloudMessage:Z

    return v0
.end method

.method public isToOlderMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->toOlderMessage:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->count:I

    return-void
.end method

.method public setGetCloudMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->getCloudMessage:Z

    return-void
.end method

.method public setGetTimeBegin(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->getTimeBegin:J

    return-void
.end method

.method public setGetTimePeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->getTimePeriod:J

    return-void
.end method

.method public setMessageKey(Lcom/tencent/imsdk/message/MessageKey;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->messageKey:Lcom/tencent/imsdk/message/MessageKey;

    return-void
.end method

.method public setMessageTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->messageTypeList:Ljava/util/List;

    return-void
.end method

.method public setToOlderMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/MessageListGetOption;->toOlderMessage:Z

    return-void
.end method
