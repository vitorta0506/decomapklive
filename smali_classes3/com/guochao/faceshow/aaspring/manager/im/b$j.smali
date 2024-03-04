.class Lcom/guochao/faceshow/aaspring/manager/im/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->H0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

.field final synthetic g:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Ljava/util/List;ILjava/util/List;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->g:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->c:Ljava/util/List;

    iput p5, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->d:I

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->f:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->setConversationInfo(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->setMatchMessages(Ljava/util/List;)V

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->d:I

    add-int/lit8 v4, p1, 0x1

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->g:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->f:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->O(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "desc = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zune: "

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$j;->a(Ljava/util/List;)V

    return-void
.end method
