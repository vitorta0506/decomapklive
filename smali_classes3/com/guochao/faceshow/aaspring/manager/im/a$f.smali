.class Lcom/guochao/faceshow/aaspring/manager/im/a$f;
.super Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/im/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/manager/im/a;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$f;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    return-void
.end method


# virtual methods
.method public onRecvC2CReadReceipt(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvC2CReadReceipt(Ljava/util/List;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;

    .line 5
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$f;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/manager/im/a;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 9
    invoke-interface {v2, v3}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvMessageRevoked(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$f;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$f;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/a;->q(Lcom/tencent/imsdk/v2/V2TIMMessage;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
