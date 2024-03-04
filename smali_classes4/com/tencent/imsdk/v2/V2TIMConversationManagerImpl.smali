.class public Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMConversationManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$V2TIMConversationManagerImplHolder;
    }
.end annotation


# instance fields
.field private mConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

.field private mV2TIMConversationListener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

.field private final mV2TIMConversationListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->mV2TIMConversationListenerList:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->initListener()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->mV2TIMConversationListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMConversationListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->mV2TIMConversationListener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMConversationListener;)Lcom/tencent/imsdk/v2/V2TIMConversationListener;
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->mV2TIMConversationListener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    return-object p1
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$V2TIMConversationManagerImplHolder;->access$100()Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private initListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->mConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->mConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->mConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->setConversationListener(Lcom/tencent/imsdk/conversation/ConversationListener;)V

    return-void
.end method


# virtual methods
.method public addConversationListener(Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addConversationsToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "groupName is empty"

    .line 2
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$26;

    invoke-direct {p2, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$26;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$27;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$27;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->addConversationsToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    const-string p1, "conversationIDList is empty"

    .line 10
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public createConversationGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "group name is empty"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$21;

    invoke-direct {p2, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$21;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 8
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$22;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$22;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->createConversationGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "conversationID is empty"

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$13;

    invoke-direct {v2, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$13;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/imsdk/conversation/ConversationManager;->deleteConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteConversationGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "group name is empty"

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$24;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$24;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->deleteConversationGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteConversationsFromGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "groupName is empty"

    .line 2
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$28;

    invoke-direct {p2, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$28;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$29;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$29;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->deleteConversationsFromGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    const-string p1, "conversationIDList is empty"

    .line 10
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "conversationID is empty"

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$12;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$12;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->getConversationInfo(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getConversationGroupList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$23;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$23;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->getConversationGroupList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/imsdk/conversation/ConversationKey;

    invoke-direct {v0}, Lcom/tencent/imsdk/conversation/ConversationKey;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "c2c_"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationType(I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationID(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "group_"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x6

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationType(I)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationID(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getConversationList(JILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationResult;",
            ">;)V"
        }
    .end annotation

    if-gtz p3, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x1781

    const-string p2, "count is invalid"

    .line 1
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;

    invoke-direct {v0, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p4

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$6;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->getConversationList(JILcom/tencent/imsdk/common/IMCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const-wide/16 p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(J)V

    return-void
.end method

.method public getConversationList(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$9;

    invoke-direct {p1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$9;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 11
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$10;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->getConversationList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const/16 p1, 0x1781

    const-string v0, "conversationIDList cannot be empty"

    .line 12
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getConversationListByFilter(Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationResult;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "filter is null"

    .line 1
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "count is invalid"

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 4
    :cond_3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$7;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->getConversationFilter()Lcom/tencent/imsdk/conversation/ConversationListFilter;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$8;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->getConversationListByFilter(Lcom/tencent/imsdk/conversation/ConversationListFilter;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getTotalUnreadMessageCount(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$16;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$16;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->getTotalUnreadMessageCount(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public markConversation(Ljava/util/List;JZLcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZ",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_2

    if-eqz p5, :cond_1

    const-string p1, "markType is invalid"

    .line 2
    invoke-interface {p5, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 3
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v0

    .line 6
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$17;

    invoke-direct {p1, p0, p5}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$17;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 8
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v1

    new-instance v6, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$18;

    invoke-direct {v6, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$18;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/imsdk/conversation/ConversationManager;->markConversation(Ljava/util/List;JZLcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    const-string p1, "conversationIDList is empty"

    .line 9
    invoke-interface {p5, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public pinConversation(Ljava/lang/String;ZLcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "conversationID is empty"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$15;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$15;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->pinConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public removeConversationListener(Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renameConversationGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "oldName is empty"

    .line 2
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    const-string p1, "newName is empty"

    .line 4
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 5
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$25;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$25;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->renameConversationGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setConversationCustomData(Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

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
    invoke-virtual {p0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$19;

    invoke-direct {p1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$19;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 7
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$20;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$20;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, v0, p2, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->setConversationCustomData(Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    const/16 p1, 0x1781

    const-string p2, "conversationIDList is empty"

    .line 8
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setConversationDraft(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "conversationID is empty"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/tencent/imsdk/message/DraftMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/DraftMessage;-><init>()V

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/message/DraftMessage;->setUserDefinedData([B)V

    .line 6
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$14;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$14;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->setConversationDraft(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/message/DraftMessage;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setConversationListener(Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
