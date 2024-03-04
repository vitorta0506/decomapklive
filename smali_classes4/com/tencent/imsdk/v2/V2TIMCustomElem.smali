.class public Lcom/tencent/imsdk/v2/V2TIMCustomElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "SourceFile"


# instance fields
.field private data:[B

.field private description:Ljava/lang/String;

.field private extension:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->data:[B

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/CustomElement;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/CustomElement;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->description:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/CustomElement;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/CustomElement;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->extension:[B

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/CustomElement;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/CustomElement;->getExtension()[B

    move-result-object v0

    return-object v0
.end method

.method public setData([B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->data:[B

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/CustomElement;

    .line 4
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/CustomElement;->setData([B)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->description:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/CustomElement;

    .line 4
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/CustomElement;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setExtension([B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->extension:[B

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/CustomElement;

    .line 4
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/CustomElement;->setExtension([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getExtension()[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getExtension()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    :cond_2
    const-string v4, "V2TIMCustomElem--->"

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data2String:"

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", description:"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extension2String:"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
