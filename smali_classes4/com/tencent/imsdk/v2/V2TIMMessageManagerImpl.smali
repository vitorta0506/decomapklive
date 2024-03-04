.class public Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMMessageManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$V2TIMMessageManagerImplHolder;
    }
.end annotation


# instance fields
.field private final MAX_ABSTRACT_COUNT:I

.field private final MAX_ABSTRACT_LENGTH:I

.field private final MAX_FORWARD_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private mLockObject:Ljava/lang/Object;

.field private mMessageListener:Lcom/tencent/imsdk/message/MessageListener;

.field private mV2TIMMsgListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;-><init>()V

    const-string v0, "V2TIMMessageManagerImpl"

    .line 3
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0x12c

    .line 4
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->MAX_FORWARD_COUNT:I

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->MAX_ABSTRACT_COUNT:I

    const/16 v0, 0x64

    .line 6
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->MAX_ABSTRACT_LENGTH:I

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mLockObject:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mV2TIMMsgListenerList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mV2TIMMsgListenerList:Ljava/util/List;

    return-object p0
.end method

.method private getC2CMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isNeedReadReceipt()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    const/16 p1, 0x1781

    const-string v0, "invalid message list"

    .line 9
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;

    invoke-direct {p1, p0, v1, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p0, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->findMessages(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private getGroupMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isNeedReadReceipt()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getReceiptUnreadCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 9
    new-instance v3, Lcom/tencent/imsdk/message/GroupMessageReceipt;

    invoke-direct {v3}, Lcom/tencent/imsdk/message/GroupMessageReceipt;-><init>()V

    .line 10
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getGroupID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setGroupID(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getMsgID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setMsgID(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getReceiptReadCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setReadCount(J)V

    .line 13
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getReceiptUnreadCount()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setUnreadCount(J)V

    .line 14
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;-><init>()V

    .line 15
    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->setGroupMessageReceipt(Lcom/tencent/imsdk/message/GroupMessageReceipt;)V

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object v2

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    if-eqz p2, :cond_5

    .line 21
    invoke-interface {p2, v1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const/16 p1, 0x1781

    const-string v0, "invalid messages"

    .line 22
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    .line 23
    :cond_6
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;

    invoke-direct {p1, p0, v1, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 24
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$40;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$40;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, v0, v1}, Lcom/tencent/imsdk/message/MessageCenter;->getGroupMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$V2TIMMessageManagerImplHolder;->access$100()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAdvancedMsgListener(Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mV2TIMMsgListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mV2TIMMsgListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearC2CHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string/jumbo v0, "userID is empty"

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$26;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$26;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->clearC2CHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public clearGroupHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "groupID is empty"

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$27;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$27;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->clearGroupHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/CustomElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/CustomElement;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/CustomElement;->setData([B)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public createCustomMessage([BLjava/lang/String;[B)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 6
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/tencent/imsdk/message/CustomElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/CustomElement;-><init>()V

    .line 9
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/CustomElement;->setData([B)V

    .line 10
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/CustomElement;->setDescription(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p3}, Lcom/tencent/imsdk/message/CustomElement;->setExtension([B)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public createFaceMessage(I[B)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/FaceElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/FaceElement;-><init>()V

    .line 4
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/FaceElement;->setFaceData([B)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/FaceElement;->setFaceIndex(I)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public createFileMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/tencent/imsdk/message/FileElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/FileElement;-><init>()V

    .line 6
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/FileElement;->setFilePath(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/FileElement;->setFileName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createForwardMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "V2TIMMessageManagerImpl"

    if-nez p1, :cond_0

    const-string p1, "createForwardMessage, message cannot be null"

    .line 1
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x2

    .line 2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v3

    if-eq v2, v3, :cond_1

    const-string p1, "message status must be V2TIM_MSG_STATUS_SEND_SUCC"

    .line 3
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v2, 0x9

    .line 4
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string p1, "group tips message is not support"

    .line 5
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/message/Message;->setMessageBaseElements(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/message/Message;->setForward(Z)V

    return-object v0
.end method

.method public createImageMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/ImageElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/ImageElement;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/ImageElement;->setOriginImageFilePath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public createLocationMessage(Ljava/lang/String;DD)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/LocationElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/LocationElement;-><init>()V

    .line 4
    invoke-virtual {v2, p2, p3}, Lcom/tencent/imsdk/message/LocationElement;->setLongitude(D)V

    .line 5
    invoke-virtual {v2, p4, p5}, Lcom/tencent/imsdk/message/LocationElement;->setLatitude(D)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/LocationElement;->setDescription(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public createMergerMessage(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "V2TIMMessageManagerImpl"

    if-eqz p1, :cond_a

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_4

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const/4 v3, 0x5

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    .line 4
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_2

    .line 6
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 7
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 v4, 0x2

    .line 9
    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v5

    if-eq v4, v5, :cond_6

    const-string p1, "message status must be V2TIM_MSG_STATUS_SEND_SUCC"

    .line 10
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const/16 v4, 0x9

    .line 11
    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v3

    if-ne v4, v3, :cond_5

    const-string p1, "group tips message is not support"

    .line 12
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    if-nez p4, :cond_8

    const-string p1, "compatibleText invalid, compatibleText cannot be null"

    .line 13
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_8
    new-instance p3, Lcom/tencent/imsdk/message/MergerElement;

    invoke-direct {p3}, Lcom/tencent/imsdk/message/MergerElement;-><init>()V

    .line 15
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MergerElement;->setTitle(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3, v2}, Lcom/tencent/imsdk/message/MergerElement;->setAbstractList(Ljava/util/List;)V

    .line 17
    invoke-virtual {p3, p4}, Lcom/tencent/imsdk/message/MergerElement;->setCompatibleText(Ljava/lang/String;)V

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 20
    invoke-virtual {p4}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_9
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MergerElement;->setMessageList(Ljava/util/List;)V

    .line 22
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p2

    .line 24
    invoke-virtual {p2, p3}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    const/4 p3, 0x1

    .line 25
    invoke-virtual {p2, p3}, Lcom/tencent/imsdk/message/Message;->setForward(Z)V

    return-object p1

    :cond_a
    :goto_2
    const-string p1, "messageList invalid, the number of messageList must be between 1 and 300"

    .line 26
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createSoundMessage(Ljava/lang/String;I)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/SoundElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/SoundElement;-><init>()V

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/SoundElement;->setSoundDuration(I)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/SoundElement;->setSoundFilePath(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public createTargetedGroupMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/util/List;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "V2TIMMessageManagerImpl"

    if-nez p1, :cond_0

    const-string p1, "createTargetedGroupMessage, message cannot be null"

    .line 1
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupAtUserList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo p1, "targeted group message does not support at message"

    .line 5
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/message/Message;->setTargetGroupMemberList(Ljava/util/List;)V

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "receiverList cannot be empty"

    .line 7
    invoke-static {v1, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTextAtMessage(Ljava/lang/String;Ljava/util/List;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/TextElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/TextElement;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/TextElement;->setTextContent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setGroupAtUserList(Ljava/util/List;)V

    return-object v0
.end method

.method public createTextMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/TextElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/TextElement;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/TextElement;->setTextContent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public createVideoMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/tencent/imsdk/message/VideoElement;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/VideoElement;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/message/VideoElement;->setVideoFilePath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p4}, Lcom/tencent/imsdk/message/VideoElement;->setSnapshotFilePath(Ljava/lang/String;)V

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {v2, p3}, Lcom/tencent/imsdk/message/VideoElement;->setVideoDuration(I)V

    .line 7
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/VideoElement;->setVideoType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/Message;->addElement(Lcom/tencent/imsdk/message/MessageBaseElement;)V

    return-object v0
.end method

.method public deleteMessageExtensions(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "invalid message"

    .line 1
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$47;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$47;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$48;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$48;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/message/MessageCenter;->deleteMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteMessageFromLocalStorage(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "message is null"

    .line 1
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$24;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$24;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->deleteLocalMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteMessages(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 4
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$25;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$25;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/message/MessageCenter;->deleteCloudMessageList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const/16 p1, 0x1781

    const-string v0, "messages is invalid"

    .line 6
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public findMessages(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$32;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$32;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$33;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$33;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->findMessageByMessageId(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "messages is empty"

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getC2CHistoryMessageList(Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$9;

    invoke-direct {v0, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$9;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object p4

    .line 4
    :cond_1
    new-instance p3, Lcom/tencent/imsdk/message/MessageListGetOption;

    invoke-direct {p3}, Lcom/tencent/imsdk/message/MessageListGetOption;-><init>()V

    .line 5
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MessageListGetOption;->setCount(I)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MessageListGetOption;->setToOlderMessage(Z)V

    .line 7
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetCloudMessage(Z)V

    .line 8
    invoke-virtual {p3, p4}, Lcom/tencent/imsdk/message/MessageListGetOption;->setMessageKey(Lcom/tencent/imsdk/message/MessageKey;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance p4, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$10;

    invoke-direct {p4, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$10;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/imsdk/message/MessageCenter;->getC2CHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    const/16 p1, 0x1781

    const-string/jumbo p2, "userID is empty or count is 0"

    .line 10
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getC2CReceiveMessageOpt(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMReceiveMessageOptInfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$6;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$7;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getC2CReceiveMessageOpt(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "invalid userIDList"

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getGroupHistoryMessageList(Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$11;

    invoke-direct {v0, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$11;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object p4

    .line 4
    :cond_1
    new-instance p3, Lcom/tencent/imsdk/message/MessageListGetOption;

    invoke-direct {p3}, Lcom/tencent/imsdk/message/MessageListGetOption;-><init>()V

    .line 5
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MessageListGetOption;->setCount(I)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MessageListGetOption;->setToOlderMessage(Z)V

    .line 7
    invoke-virtual {p3, p2}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetCloudMessage(Z)V

    .line 8
    invoke-virtual {p3, p4}, Lcom/tencent/imsdk/message/MessageListGetOption;->setMessageKey(Lcom/tencent/imsdk/message/MessageKey;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance p4, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$12;

    invoke-direct {p4, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$12;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/imsdk/message/MessageCenter;->getGroupHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    const/16 p1, 0x1781

    const-string p2, "groupID is empty or count is 0"

    .line 10
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getGroupMessageReadMemberList(Lcom/tencent/imsdk/v2/V2TIMMessage;IJILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "IJI",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isNeedReadReceipt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-le p5, v1, :cond_2

    if-eqz p6, :cond_1

    const-string p1, "invalid count, maximum support 100"

    .line 2
    invoke-interface {p6, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v2

    .line 4
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;

    invoke-direct {p1, p0, p6, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;I)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v1

    new-instance v7, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$42;

    invoke-direct {v7, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$42;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/imsdk/message/MessageCenter;->getGroupMessageReadMembers(Lcom/tencent/imsdk/message/Message;IJILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p6, :cond_4

    const-string p1, "invalid message"

    .line 6
    invoke-interface {p6, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "option is null"

    .line 1
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getGroupID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "groupID and userID cannot be null at the same time"

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getGroupID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    const-string p1, "groupID and userID cannot set at the same time"

    .line 5
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getCount()I

    move-result v1

    if-gtz v1, :cond_7

    if-eqz p2, :cond_6

    const-string p1, "count less than 0"

    .line 7
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_6
    return-void

    .line 8
    :cond_7
    new-instance v1, Lcom/tencent/imsdk/message/MessageListGetOption;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/MessageListGetOption;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/MessageListGetOption;->setCount(I)V

    .line 10
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getGetTimeBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetTimeBegin(J)V

    .line 11
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getGetTimePeriod()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetTimePeriod(J)V

    .line 12
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getGetType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    if-eqz p2, :cond_8

    const-string p1, "getType is invalid"

    .line 13
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_8
    return-void

    .line 14
    :cond_9
    invoke-virtual {v1, v5}, Lcom/tencent/imsdk/message/MessageListGetOption;->setToOlderMessage(Z)V

    .line 15
    invoke-virtual {v1, v5}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetCloudMessage(Z)V

    .line 16
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getMessageTypeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/MessageListGetOption;->setMessageTypeList(Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_a
    invoke-virtual {v1, v3}, Lcom/tencent/imsdk/message/MessageListGetOption;->setToOlderMessage(Z)V

    .line 18
    invoke-virtual {v1, v5}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetCloudMessage(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getMessageTypeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/MessageListGetOption;->setMessageTypeList(Ljava/util/List;)V

    goto :goto_0

    .line 20
    :cond_b
    invoke-virtual {v1, v5}, Lcom/tencent/imsdk/message/MessageListGetOption;->setToOlderMessage(Z)V

    .line 21
    invoke-virtual {v1, v3}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetCloudMessage(Z)V

    goto :goto_0

    .line 22
    :cond_c
    invoke-virtual {v1, v3}, Lcom/tencent/imsdk/message/MessageListGetOption;->setToOlderMessage(Z)V

    .line 23
    invoke-virtual {v1, v3}, Lcom/tencent/imsdk/message/MessageListGetOption;->setGetCloudMessage(Z)V

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getLastMsg()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 25
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getLastMsg()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/MessageListGetOption;->setMessageKey(Lcom/tencent/imsdk/message/MessageKey;)V

    goto :goto_1

    .line 26
    :cond_d
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getGroupID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 27
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getLastMsgSeq()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_e

    .line 28
    new-instance v0, Lcom/tencent/imsdk/message/MessageKey;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/MessageKey;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getLastMsgSeq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/imsdk/message/MessageKey;->setSeq(J)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/MessageListGetOption;->setMessageKey(Lcom/tencent/imsdk/message/MessageKey;)V

    .line 31
    :cond_e
    :goto_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$13;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$13;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 32
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getLastMsg()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 33
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getLastMsg()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    .line 34
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getUserID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 35
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getUserID()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$14;

    invoke-direct {v2, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$14;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1, v2}, Lcom/tencent/imsdk/message/MessageCenter;->getC2CHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V

    goto :goto_2

    .line 36
    :cond_10
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getGroupID()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$15;

    invoke-direct {v2, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$15;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1, v2}, Lcom/tencent/imsdk/message/MessageCenter;->getGroupHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V

    :goto_2
    return-void
.end method

.method public getMessageExtensions(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageExtension;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "invalid message"

    .line 1
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$45;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$45;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$46;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$46;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->getMessageExtensions(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;",
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
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0, v0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getC2CMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getGroupMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const/16 p1, 0x1781

    const-string v0, "invalid message list"

    .line 8
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method initListener()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mMessageListener:Lcom/tencent/imsdk/message/MessageListener;

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mMessageListener:Lcom/tencent/imsdk/message/MessageListener;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageCenter;->addMessageListener(Lcom/tencent/imsdk/message/MessageListener;)V

    return-void
.end method

.method public insertC2CMessageToLocalStorage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x1781

    const-string v1, ""

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "message is null!"

    .line 1
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-object v1

    .line 2
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_2

    const-string/jumbo p1, "userID is empty"

    .line 3
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-object v1

    .line 4
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p4, :cond_4

    const-string p1, "sender is empty"

    .line 5
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-object v1

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    .line 7
    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/Message;->setMessageType(I)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/tencent/imsdk/message/Message;->setSenderUserID(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/message/Message;->setReceiverUserID(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$30;

    invoke-direct {p2, p0, p4, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$30;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 11
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p3

    new-instance p4, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$31;

    invoke-direct {p4, p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$31;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    invoke-virtual {p3, v0, p4}, Lcom/tencent/imsdk/message/MessageCenter;->insertLocalMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insertGroupMessageToLocalStorage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x1781

    const-string v1, ""

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "message is null!"

    .line 1
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-object v1

    .line 2
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_2

    const-string p1, "groupID is empty"

    .line 3
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-object v1

    .line 4
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p4, :cond_4

    const-string p1, "sender is empty"

    .line 5
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-object v1

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    .line 7
    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/Message;->setMessageType(I)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/tencent/imsdk/message/Message;->setSenderUserID(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/message/Message;->setGroupID(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$28;

    invoke-direct {p2, p0, p4, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$28;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 11
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p3

    new-instance p4, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$29;

    invoke-direct {p4, p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$29;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    invoke-virtual {p3, v0, p4}, Lcom/tencent/imsdk/message/MessageCenter;->insertLocalMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public markAllMessageAsRead(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$23;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$23;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1, v1}, Lcom/tencent/imsdk/conversation/ConversationManager;->clearUnreadMessage(ZZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$19;

    invoke-direct {v2, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$19;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/imsdk/conversation/ConversationManager;->clearUnreadMessage(ZZLcom/tencent/imsdk/common/IMCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$20;

    invoke-direct {v3, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$20;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/tencent/imsdk/message/MessageCenter;->setC2CMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V

    :goto_0
    return-void
.end method

.method public markGroupMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$21;

    invoke-direct {v2, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$21;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/imsdk/conversation/ConversationManager;->clearUnreadMessage(ZZLcom/tencent/imsdk/common/IMCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$22;

    invoke-direct {v3, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$22;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/tencent/imsdk/message/MessageCenter;->setGroupMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V

    :goto_0
    return-void
.end method

.method public modifyMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMCompleteCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const/4 v0, 0x0

    const-string v1, "msg is null"

    .line 1
    invoke-interface {p2, p1, v1, v0}, Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$17;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$17;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$18;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$18;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->modifyMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mV2TIMMsgListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;

    .line 3
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAdvancedMsgListener(Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->mV2TIMMsgListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public revokeMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "msg is null"

    .line 1
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "msg status must be V2TIM_MSG_STATUS_SEND_SUCC"

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 4
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$16;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$16;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->revokeMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public searchLocalMessages(Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageSearchResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->getSearchTimePosition()J

    move-result-wide v0

    const/16 v2, 0x1781

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_4

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->getSearchTimePeriod()J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->getPageIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->getPageSize()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$34;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$34;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->getMessageSearchParam()Lcom/tencent/imsdk/message/MessageSearchParam;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$35;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$35;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->findMessageBySearchKey(Lcom/tencent/imsdk/message/MessageSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const-wide/16 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(J)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p1, "pageIndex or pageSize is invalid"

    .line 6
    invoke-interface {p2, v2, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    const-string/jumbo p1, "time < 0"

    .line 7
    invoke-interface {p2, v2, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x1781

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p7, :cond_0

    const-string p1, "message is null"

    .line 1
    invoke-interface {p7, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-object v1

    .line 2
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p7, :cond_2

    const-string p1, "receiver and groupID cannot be empty at the same time!"

    .line 3
    invoke-interface {p7, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-object v1

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v2

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6
    sget v3, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/message/Message;->setMessageType(I)V

    .line 7
    invoke-virtual {v2, p3}, Lcom/tencent/imsdk/message/Message;->setGroupID(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getTargetGroupMemberList()Ljava/util/List;

    move-result-object p3

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz p3, :cond_4

    .line 10
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getTargetGroupMemberList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupAtUserList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 12
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    if-eqz p7, :cond_5

    const-string/jumbo p1, "targeted group message does not support group @ message"

    .line 13
    invoke-interface {p7, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_5
    return-object v1

    .line 14
    :cond_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2, p3}, Lcom/tencent/imsdk/message/Message;->setTargetGroupMemberList(Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_7
    sget p3, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    invoke-virtual {v2, p3}, Lcom/tencent/imsdk/message/Message;->setMessageType(I)V

    .line 18
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/Message;->setReceiverUserID(Ljava/lang/String;)V

    .line 19
    :cond_8
    :goto_0
    invoke-virtual {v2, p4}, Lcom/tencent/imsdk/message/Message;->setPriority(I)V

    if-eqz p5, :cond_9

    const/4 p2, 0x0

    .line 20
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/Message;->setLifeTime(I)V

    :cond_9
    if-eqz p6, :cond_a

    .line 21
    invoke-virtual {p6}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->getMessageOfflinePushInfo()Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/Message;->setOfflinePushInfo(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V

    .line 22
    :cond_a
    sget p2, Lcom/tencent/imsdk/message/Message;->PLATFORM_ANDROID:I

    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/message/Message;->setPlatform(I)V

    .line 23
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;

    invoke-direct {p2, p0, p7}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    .line 24
    new-instance p3, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;

    invoke-direct {p3, p0, p7, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSendCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 25
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p4

    new-instance p5, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$4;

    invoke-direct {p5, p0, p3, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    invoke-virtual {p4, v2, p2, p5}, Lcom/tencent/imsdk/message/MessageCenter;->sendMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/message/MessageUploadProgressCallback;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p2

    const-wide/16 p3, 0x3

    invoke-virtual {p2, p3, p4}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(J)V

    return-object p1
.end method

.method public sendMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_7

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
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isNeedReadReceipt()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->isHasSentReceipt()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/Message;->getMessageKey()Lcom/tencent/imsdk/message/MessageKey;

    move-result-object v2

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz p2, :cond_5

    .line 12
    invoke-interface {p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    :cond_5
    return-void

    .line 13
    :cond_6
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$36;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$36;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 14
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$37;

    invoke-direct {v2, p0, v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$37;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;Ljava/util/List;)V

    invoke-virtual {p2, p1, v2}, Lcom/tencent/imsdk/message/MessageCenter;->sendMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    const/16 p1, 0x1781

    const-string v0, "invalid messageList"

    .line 15
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public setC2CReceiveMessageOpt(Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    const/4 v1, 0x3

    .line 2
    :goto_0
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$5;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, p1, v1, v0}, Lcom/tencent/imsdk/relationship/RelationshipManager;->setC2CReceiveMessageOpt(Ljava/util/List;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setC2CReceiveMessageOpt error opt = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "V2TIMMessageManagerImpl"

    invoke-static {p2, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p1, "opt is error"

    .line 4
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    const-string p1, "invalid userIDList"

    .line 5
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setGroupReceiveMessageOpt(Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    const-string v2, "V2TIMMessageManagerImpl"

    if-eqz v0, :cond_1

    const-string p1, "setReceiveMessageOpt err, groupID is empty"

    .line 2
    invoke-static {v2, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "groupID is empty"

    .line 3
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_AUTO_RECEIVE:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 5
    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_NOT_RECEIVE:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 6
    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_RECEIVE_WITH_NO_OFFLINE_PUSH:I

    .line 7
    :goto_0
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$8;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupReceiveMessageOpt(Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setReceiveMessageOpt error opt = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const-string p1, "opt is error"

    .line 9
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setMessageExtensions(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageExtension;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "invalid message"

    .line 1
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    const-string p1, "extensions cannot be null"

    .line 2
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 3
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;

    .line 5
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->getExtensionKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p3, :cond_4

    const-string p1, "empty extensionKey"

    .line 6
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void

    .line 7
    :cond_5
    new-instance v3, Lcom/tencent/imsdk/message/MessageExtension;

    invoke-direct {v3}, Lcom/tencent/imsdk/message/MessageExtension;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->getExtensionKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/imsdk/message/MessageExtension;->setExtensionKey(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->getExtensionValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/message/MessageExtension;->setExtensionValue(Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_6
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$43;

    invoke-direct {p2, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$43;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 12
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$44;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$44;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, v1, v0}, Lcom/tencent/imsdk/message/MessageCenter;->setMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method
