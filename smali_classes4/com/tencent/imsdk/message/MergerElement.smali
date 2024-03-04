.class public Lcom/tencent/imsdk/message/MergerElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "SourceFile"


# instance fields
.field private abstractList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private compatibleText:Ljava/lang/String;

.field private layerOverLimit:Z

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private messageNumber:I

.field private relayBuffer:[B

.field private relayJsonKey:Ljava/lang/String;

.field private relayPbKey:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/MergerElement;->abstractList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/MergerElement;->messageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/imsdk/message/MergerElement;->layerOverLimit:Z

    const/16 v0, 0xa

    .line 5
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/MessageBaseElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method protected addAbstract(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/message/MergerElement;->abstractList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
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

    iget-object v0, p0, Lcom/tencent/imsdk/message/MergerElement;->abstractList:Ljava/util/List;

    return-object v0
.end method

.method public getCompatibleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/MergerElement;->compatibleText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/MergerElement;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isLayerOverLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/MergerElement;->layerOverLimit:Z

    return v0
.end method

.method public setAbstractList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/message/MergerElement;->abstractList:Ljava/util/List;

    return-void
.end method

.method public setCompatibleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/MergerElement;->compatibleText:Ljava/lang/String;

    return-void
.end method

.method public setMessageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/message/MergerElement;->messageList:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/MergerElement;->title:Ljava/lang/String;

    return-void
.end method
