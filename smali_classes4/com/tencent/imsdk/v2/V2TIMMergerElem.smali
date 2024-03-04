.class public Lcom/tencent/imsdk/v2/V2TIMMergerElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadMergerMessage(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMergerElem$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMergerElem$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMMergerElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMergerElem$2;

    invoke-direct {v2, p0, v1}, Lcom/tencent/imsdk/v2/V2TIMMergerElem$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMMergerElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v0, v2}, Lcom/tencent/imsdk/message/MessageCenter;->downloadRelayMessageList(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getAbstractList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MergerElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MergerElement;->getAbstractList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MergerElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MergerElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLayersOverLimit()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MergerElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MergerElement;->isLayerOverLimit()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2TIMRelayElem--->"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", abstractList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;->getAbstractList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
