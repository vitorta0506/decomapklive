.class public Lcom/tencent/imsdk/v2/V2TIMElem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private elemIndex:I

.field private message:Lcom/tencent/imsdk/message/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "V2TIMElem"

    .line 2
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendElem(Lcom/tencent/imsdk/v2/V2TIMElem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    const-string v1, "V2TIMElem"

    if-nez v0, :cond_0

    const-string p1, "appendElem error, must be first elem from message"

    .line 2
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/tencent/imsdk/v2/V2TIMTextElem;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/tencent/imsdk/message/TextElement;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/TextElement;-><init>()V

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMTextElem;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/TextElement;->setTextContent(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/tencent/imsdk/message/CustomElement;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/CustomElement;-><init>()V

    .line 9
    move-object v1, p1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/imsdk/message/CustomElement;->setData([B)V

    .line 10
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/imsdk/message/CustomElement;->setDescription(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getExtension()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/CustomElement;->setExtension([B)V

    .line 12
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    goto :goto_0

    .line 13
    :cond_2
    instance-of v0, p1, Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lcom/tencent/imsdk/message/FaceElement;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/FaceElement;-><init>()V

    .line 15
    move-object v1, p1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/imsdk/message/FaceElement;->setFaceIndex(I)V

    .line 16
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/FaceElement;->setFaceData([B)V

    .line 17
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    goto :goto_0

    .line 18
    :cond_3
    instance-of v0, p1, Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    if-eqz v0, :cond_4

    .line 19
    new-instance v0, Lcom/tencent/imsdk/message/LocationElement;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/LocationElement;-><init>()V

    .line 20
    move-object v1, p1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/imsdk/message/LocationElement;->setLatitude(D)V

    .line 21
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/imsdk/message/LocationElement;->setLongitude(D)V

    .line 22
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/LocationElement;->setDescription(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    .line 25
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-void

    :cond_4
    const-string p1, "appendElem error, not support this elem type"

    .line 26
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getElement()Lcom/tencent/imsdk/message/MessageBaseElement;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->elemIndex:I

    if-ltz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->elemIndex:I

    if-gt v2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MessageBaseElement;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method getMessage()Lcom/tencent/imsdk/message/Message;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    return-object v0
.end method

.method public getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->elemIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-object v1

    .line 5
    :cond_1
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MessageBaseElement;

    .line 7
    instance-of v3, v0, Lcom/tencent/imsdk/message/TextElement;

    if-eqz v3, :cond_2

    .line 8
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMTextElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMTextElem;-><init>()V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v3, v0, Lcom/tencent/imsdk/message/ImageElement;

    if-eqz v3, :cond_3

    .line 10
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMImageElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMImageElem;-><init>()V

    goto :goto_0

    .line 11
    :cond_3
    instance-of v3, v0, Lcom/tencent/imsdk/message/VideoElement;

    if-eqz v3, :cond_4

    .line 12
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;-><init>()V

    goto :goto_0

    .line 13
    :cond_4
    instance-of v3, v0, Lcom/tencent/imsdk/message/SoundElement;

    if-eqz v3, :cond_5

    .line 14
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;-><init>()V

    goto :goto_0

    .line 15
    :cond_5
    instance-of v3, v0, Lcom/tencent/imsdk/message/FaceElement;

    if-eqz v3, :cond_6

    .line 16
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;-><init>()V

    goto :goto_0

    .line 17
    :cond_6
    instance-of v3, v0, Lcom/tencent/imsdk/message/FileElement;

    if-eqz v3, :cond_7

    .line 18
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFileElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMFileElem;-><init>()V

    goto :goto_0

    .line 19
    :cond_7
    instance-of v3, v0, Lcom/tencent/imsdk/message/CustomElement;

    if-eqz v3, :cond_8

    .line 20
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;-><init>()V

    goto :goto_0

    .line 21
    :cond_8
    instance-of v3, v0, Lcom/tencent/imsdk/message/LocationElement;

    if-eqz v3, :cond_9

    .line 22
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;-><init>()V

    goto :goto_0

    .line 23
    :cond_9
    instance-of v3, v0, Lcom/tencent/imsdk/message/MergerElement;

    if-eqz v3, :cond_a

    .line 24
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMergerElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;-><init>()V

    goto :goto_0

    .line 25
    :cond_a
    instance-of v0, v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    if-eqz v0, :cond_b

    .line 26
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;-><init>()V

    .line 27
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    .line 28
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->setElemIndex(I)V

    return-object v1
.end method

.method setElemIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->elemIndex:I

    return-void
.end method

.method setMessage(Lcom/tencent/imsdk/message/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMElem;->message:Lcom/tencent/imsdk/message/Message;

    return-void
.end method
