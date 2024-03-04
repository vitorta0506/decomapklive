.class public Lcom/tencent/imsdk/v2/V2TIMMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_ELEM_TYPE_CUSTOM:I = 0x2

.field public static final V2TIM_ELEM_TYPE_FACE:I = 0x8

.field public static final V2TIM_ELEM_TYPE_FILE:I = 0x6

.field public static final V2TIM_ELEM_TYPE_GROUP_TIPS:I = 0x9

.field public static final V2TIM_ELEM_TYPE_IMAGE:I = 0x3

.field public static final V2TIM_ELEM_TYPE_LOCATION:I = 0x7

.field public static final V2TIM_ELEM_TYPE_MERGER:I = 0xa

.field public static final V2TIM_ELEM_TYPE_NONE:I = 0x0

.field public static final V2TIM_ELEM_TYPE_SOUND:I = 0x4

.field public static final V2TIM_ELEM_TYPE_TEXT:I = 0x1

.field public static final V2TIM_ELEM_TYPE_VIDEO:I = 0x5

.field public static final V2TIM_GROUP_MESSAGE_READ_MEMBERS_FILTER_READ:I = 0x0

.field public static final V2TIM_GROUP_MESSAGE_READ_MEMBERS_FILTER_UNREAD:I = 0x1

.field public static final V2TIM_MSG_STATUS_HAS_DELETED:I = 0x4

.field public static final V2TIM_MSG_STATUS_LOCAL_IMPORTED:I = 0x5

.field public static final V2TIM_MSG_STATUS_LOCAL_REVOKED:I = 0x6

.field public static final V2TIM_MSG_STATUS_SENDING:I = 0x1

.field public static final V2TIM_MSG_STATUS_SEND_FAIL:I = 0x3

.field public static final V2TIM_MSG_STATUS_SEND_SUCC:I = 0x2

.field public static final V2TIM_NOT_RECEIVE_MESSAGE:I = 0x1

.field public static final V2TIM_PRIORITY_DEFAULT:I = 0x0

.field public static final V2TIM_PRIORITY_HIGH:I = 0x1

.field public static final V2TIM_PRIORITY_LOW:I = 0x3

.field public static final V2TIM_PRIORITY_NORMAL:I = 0x2

.field public static final V2TIM_RECEIVE_MESSAGE:I = 0x0

.field public static final V2TIM_RECEIVE_NOT_NOTIFY_MESSAGE:I = 0x2


# instance fields
.field private message:Lcom/tencent/imsdk/message/Message;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/imsdk/message/Message;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/Message;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/BaseManager;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/Message;->setClientTime(J)V

    return-void
.end method


# virtual methods
.method public getCloudCustomData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getCloudCustomString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getElemType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MessageBaseElement;

    .line 5
    instance-of v2, v0, Lcom/tencent/imsdk/message/TextElement;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    instance-of v2, v0, Lcom/tencent/imsdk/message/ImageElement;

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 7
    :cond_3
    instance-of v2, v0, Lcom/tencent/imsdk/message/VideoElement;

    if-eqz v2, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    .line 8
    :cond_4
    instance-of v2, v0, Lcom/tencent/imsdk/message/SoundElement;

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    .line 9
    :cond_5
    instance-of v2, v0, Lcom/tencent/imsdk/message/FaceElement;

    if-eqz v2, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    .line 10
    :cond_6
    instance-of v2, v0, Lcom/tencent/imsdk/message/FileElement;

    if-eqz v2, :cond_7

    const/4 v1, 0x6

    goto :goto_0

    .line 11
    :cond_7
    instance-of v2, v0, Lcom/tencent/imsdk/message/CustomElement;

    if-eqz v2, :cond_8

    const/4 v1, 0x2

    goto :goto_0

    .line 12
    :cond_8
    instance-of v2, v0, Lcom/tencent/imsdk/message/LocationElement;

    if-eqz v2, :cond_9

    const/4 v1, 0x7

    goto :goto_0

    .line 13
    :cond_9
    instance-of v2, v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    if-eqz v2, :cond_a

    const/16 v1, 0x9

    goto :goto_0

    .line 14
    :cond_a
    instance-of v0, v0, Lcom/tencent/imsdk/message/MergerElement;

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    :cond_b
    :goto_0
    return v1
.end method

.method public getFaceElem()Lcom/tencent/imsdk/v2/V2TIMFaceElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileElem()Lcom/tencent/imsdk/v2/V2TIMFileElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFileElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getFriendRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getFriendRemark()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupAtUserList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageGroupAtInfoList()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/message/MessageAtInfo;

    .line 6
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/MessageAtInfo;->getAtUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageType()I

    move-result v0

    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupTipsElem()Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMImageElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getLocalCustomData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getLocalCustomString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCustomInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getLocalCustomNumber()I

    move-result v0

    return v0
.end method

.method public getLocationElem()Lcom/tencent/imsdk/v2/V2TIMLocationElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getMergerElem()Lcom/tencent/imsdk/v2/V2TIMMergerElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMergerElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method getMessage()Lcom/tencent/imsdk/message/Message;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMsgID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNameCard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getNameCard()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflinePushInfo()Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getOfflinePushInfo()Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setMessageOfflinePushInfo(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V

    return-object v1
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getPriority()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRandom()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getRandom()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getSenderUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getSeq()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageStatus()I

    move-result v0

    return v0
.end method

.method public getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMTextElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMTextElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageType()I

    move-result v0

    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isMessageSender()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getReceiverUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getSenderUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoElem()Lcom/tencent/imsdk/v2/V2TIMVideoElem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public isBroadcastMessage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isBroadcastMessage()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExcludedFromLastMessage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isExcludedFromLastMessage()Z

    move-result v0

    return v0
.end method

.method public isExcludedFromUnreadCount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isExcludedFromUnreadCount()Z

    move-result v0

    return v0
.end method

.method public isNeedReadReceipt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isNeedReadReceipt()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerRead()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isPeerRead()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isRead()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isSelfRead()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSelf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isMessageSender()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMessageExtension()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isSupportMessageExtension()Z

    move-result v0

    return v0
.end method

.method public setCloudCustomData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setCloudCustomString(Ljava/lang/String;)V

    return-void
.end method

.method public setExcludedFromLastMessage(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setExcludedFromLastMessage(Z)V

    return-void
.end method

.method public setExcludedFromUnreadCount(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setExcludedFromUnreadCount(Z)V

    return-void
.end method

.method protected setGroupAtUserList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/tencent/imsdk/message/MessageAtInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/MessageAtInfo;-><init>()V

    .line 5
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/message/MessageAtInfo;->setAtUserID(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/Message;->setMessageGroupAtInfoList(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLocalCustomData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setLocalCustomString(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalCustomInt(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setLocalCustomNumber(I)V

    return-void
.end method

.method setMessage(Lcom/tencent/imsdk/message/Message;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    return-void
.end method

.method public setNeedReadReceipt(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setNeedReadReceipt(Z)V

    :cond_0
    return-void
.end method

.method public setSupportMessageExtension(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setSupportMessageExtension(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2TIMMessage--->"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v4}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 5
    iget-object v4, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v4}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/message/MessageBaseElement;

    .line 6
    instance-of v5, v4, Lcom/tencent/imsdk/message/TextElement;

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 9
    :goto_1
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMTextElem;

    .line 10
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 11
    :cond_1
    instance-of v5, v4, Lcom/tencent/imsdk/message/CustomElement;

    if-eqz v5, :cond_3

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v2

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 14
    :goto_2
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    .line 15
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 16
    :cond_3
    instance-of v5, v4, Lcom/tencent/imsdk/message/ImageElement;

    if-eqz v5, :cond_5

    if-nez v2, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v2

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 19
    :goto_3
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMImageElem;

    .line 20
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 21
    :cond_5
    instance-of v5, v4, Lcom/tencent/imsdk/message/SoundElement;

    if-eqz v5, :cond_7

    if-nez v2, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v2

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 24
    :goto_4
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    .line 25
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 26
    :cond_7
    instance-of v5, v4, Lcom/tencent/imsdk/message/VideoElement;

    if-eqz v5, :cond_9

    if-nez v2, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getVideoElem()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v2

    goto :goto_5

    .line 28
    :cond_8
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 29
    :goto_5
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    .line 30
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 31
    :cond_9
    instance-of v5, v4, Lcom/tencent/imsdk/message/FileElement;

    if-eqz v5, :cond_b

    if-nez v2, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFileElem()Lcom/tencent/imsdk/v2/V2TIMFileElem;

    move-result-object v2

    goto :goto_6

    .line 33
    :cond_a
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 34
    :goto_6
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMFileElem;

    .line 35
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 36
    :cond_b
    instance-of v5, v4, Lcom/tencent/imsdk/message/LocationElement;

    if-eqz v5, :cond_d

    if-nez v2, :cond_c

    .line 37
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocationElem()Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    move-result-object v2

    goto :goto_7

    .line 38
    :cond_c
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 39
    :goto_7
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    .line 40
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 41
    :cond_d
    instance-of v5, v4, Lcom/tencent/imsdk/message/FaceElement;

    if-eqz v5, :cond_f

    if-nez v2, :cond_e

    .line 42
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFaceElem()Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    move-result-object v2

    goto :goto_8

    .line 43
    :cond_e
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 44
    :goto_8
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    .line 45
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 46
    :cond_f
    instance-of v5, v4, Lcom/tencent/imsdk/message/MergerElement;

    if-eqz v5, :cond_11

    if-nez v2, :cond_10

    .line 47
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMergerElem()Lcom/tencent/imsdk/v2/V2TIMMergerElem;

    move-result-object v2

    goto :goto_9

    .line 48
    :cond_10
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 49
    :goto_9
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMMergerElem;

    .line 50
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 51
    :cond_11
    instance-of v4, v4, Lcom/tencent/imsdk/message/GroupTipsElement;

    if-eqz v4, :cond_13

    if-nez v2, :cond_12

    .line 52
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupTipsElem()Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    move-result-object v2

    goto :goto_a

    .line 53
    :cond_12
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 54
    :goto_a
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    .line 55
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    :goto_b
    const-string/jumbo v4, "|"

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_14
    const-string v2, "msgID:"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sender:"

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nickname:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", faceUrl:"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFaceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", friendRemark:"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFriendRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nameCard:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getNameCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", groupID:"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", seq:"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSeq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", random:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getRandom()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", status:"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSelf:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRead:"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPeerRead:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isPeerRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needReadReceipt:"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isNeedReadReceipt()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", priority:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getPriority()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", groupAtUserList:"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupAtUserList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", elemType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", localCustomData:"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocalCustomData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", localCustomInt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocalCustomInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cloudCustomData:"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isExcludeFromUnreadCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isExcludedFromUnreadCount()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isExcludeFromLastMessage:"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isExcludedFromLastMessage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", offlinePushInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getOfflinePushInfo()Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBroadcastMessage:"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isBroadcastMessage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", supportMessageExtension:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSupportMessageExtension()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", elemDesc:"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
