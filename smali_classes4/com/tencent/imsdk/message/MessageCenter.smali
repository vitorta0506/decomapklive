.class public Lcom/tencent/imsdk/message/MessageCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/message/MessageCenter$MessageCenterHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageCenter"


# instance fields
.field private mLockObject:Ljava/lang/Object;

.field private mMessageListener:Lcom/tencent/imsdk/message/MessageListener;

.field private mMessageProxyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/imsdk/message/MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/MessageCenter;->mLockObject:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/MessageCenter;->mMessageProxyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/imsdk/message/MessageCenter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/message/MessageCenter;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/imsdk/message/MessageCenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/message/MessageCenter;->mMessageProxyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/imsdk/message/MessageCenter;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter$MessageCenterHolder;->access$000()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    return-object v0
.end method

.method private initMessageListener()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/imsdk/message/MessageCenter$1;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/message/MessageCenter$1;-><init>(Lcom/tencent/imsdk/message/MessageCenter;)V

    iput-object v0, p0, Lcom/tencent/imsdk/message/MessageCenter;->mMessageListener:Lcom/tencent/imsdk/message/MessageListener;

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSetMessageListener(Lcom/tencent/imsdk/message/MessageListener;)V

    return-void
.end method


# virtual methods
.method public addMessageListener(Lcom/tencent/imsdk/message/MessageListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageCenter;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/message/MessageCenter;->mMessageProxyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

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

.method public clearC2CHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeClearC2CHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public clearC2CLocalMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeClearC2CLocalMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public clearGroupHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeClearGroupHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public clearGroupLocalMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeClearGroupLocalMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteCloudMessageList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeDeleteCloudMessageList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteLocalMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeDeleteLocalMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/message/Message;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/message/MessageCenter;->nativeDeleteMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public downloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/message/DownloadParam;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Lcom/tencent/imsdk/message/DownloadProgressInfo;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/message/MessageCenter;->nativeDownloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public downloadRelayMessageList(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeDownloadRelayMessageList(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public findMessageByMessageId(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeFindMessageByMessageID(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public findMessageBySearchKey(Lcom/tencent/imsdk/message/MessageSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeFindMessageBySearchKey(Lcom/tencent/imsdk/message/MessageSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getC2CHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/message/MessageCenter;->nativeGetC2CHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getDownloadUrl(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeGetDownloadUrl(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/message/MessageCenter;->nativeGetGroupHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMessageReadMembers(Lcom/tencent/imsdk/message/Message;IJILcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p6, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p6, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/tencent/imsdk/message/MessageCenter;->nativeGetGroupMessageReadMembers(Lcom/tencent/imsdk/message/Message;IJILcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeGetGroupMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getMessageExtensions(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeGetMessageExtensions(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageCenter;->initMessageListener()V

    return-void
.end method

.method public insertLocalMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeInsertLocalMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isMessagePeerRead(Lcom/tencent/imsdk/message/MessageKey;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MessageCenter"

    const-string v0, "sdk not ini"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/message/MessageCenter;->nativeIsMessagePeerRead(Lcom/tencent/imsdk/message/MessageKey;)Z

    move-result p1

    return p1
.end method

.method public isMessageSelfRead(Lcom/tencent/imsdk/message/MessageKey;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MessageCenter"

    const-string v0, "sdk not ini"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/message/MessageCenter;->nativeIsMessageSelfRead(Lcom/tencent/imsdk/message/MessageKey;)Z

    move-result p1

    return p1
.end method

.method public modifyMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeModifyMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected native nativeClearC2CHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeClearC2CLocalMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeClearGroupHistoryMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeClearGroupLocalMessage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeDeleteCloudMessageList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeDeleteLocalMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeDeleteMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/message/Message;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeDownloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeDownloadRelayMessageList(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeFindMessageByMessageID(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeFindMessageBySearchKey(Lcom/tencent/imsdk/message/MessageSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetC2CHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetDownloadUrl(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetGroupHistoryMessageList(Ljava/lang/String;Lcom/tencent/imsdk/message/MessageListGetOption;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetGroupMessageReadMembers(Lcom/tencent/imsdk/message/Message;IJILcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetGroupMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeGetMessageExtensions(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeInsertLocalMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
.end method

.method protected native nativeIsMessagePeerRead(Lcom/tencent/imsdk/message/MessageKey;)Z
.end method

.method protected native nativeIsMessageSelfRead(Lcom/tencent/imsdk/message/MessageKey;)Z
.end method

.method protected native nativeModifyMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeRevokeMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSendMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/message/MessageUploadProgressCallback;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
.end method

.method protected native nativeSendMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeSetC2CMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetGroupMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetLocalCustomNumber(Lcom/tencent/imsdk/message/Message;I)V
.end method

.method protected native nativeSetLocalCustomString(Lcom/tencent/imsdk/message/Message;Ljava/lang/String;)V
.end method

.method protected native nativeSetMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/message/Message;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageExtension;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeSetMessageListener(Lcom/tencent/imsdk/message/MessageListener;)V
.end method

.method public revokeMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeRevokeMessage(Lcom/tencent/imsdk/message/MessageKey;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public sendMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/message/MessageUploadProgressCallback;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSendMessage(Lcom/tencent/imsdk/message/Message;Lcom/tencent/imsdk/message/MessageUploadProgressCallback;Lcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSendMessageReceipts(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setC2CMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p4, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSetC2CMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p4, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSetGroupMessageRead(Ljava/lang/String;JLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setLocalCustomNumber(Lcom/tencent/imsdk/message/Message;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSetLocalCustomNumber(Lcom/tencent/imsdk/message/Message;I)V

    return-void
.end method

.method public setLocalCustomString(Lcom/tencent/imsdk/message/Message;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSetLocalCustomString(Lcom/tencent/imsdk/message/Message;Ljava/lang/String;)V

    return-void
.end method

.method public setMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/message/Message;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageExtension;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/message/MessageCenter;->nativeSetMessageExtensions(Lcom/tencent/imsdk/message/Message;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method
