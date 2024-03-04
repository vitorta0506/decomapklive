.class public Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMSignalingManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$V2TIMSignalingManagerImplHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHasValidSignalingListener:Z

.field private mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

.field private mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/imsdk/v2/V2TIMSignalingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManager;-><init>()V

    const-string v0, "V2TIMSigMgrImpl"

    .line 3
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mHasValidSignalingListener:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->initSignalingListener()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private checkSignalingListener()V
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mHasValidSignalingListener:Z

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/manager/BaseManager;->enableSignaling(Z)V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$V2TIMSignalingManagerImplHolder;->access$100()Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private initSignalingListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/signaling/SignalingManager;->setSignalingListener(Lcom/tencent/imsdk/signaling/SignalingListener;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMSigMgrImpl"

    const-string p2, "signaling accept failed, inviteID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "inviteID is null"

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$5;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/signaling/SignalingManager;->accept(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public addInvitedSignaling(Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->getInviteID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->getInviter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->getInviteeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->getInviteeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->getSignalingInfo()Lcom/tencent/imsdk/signaling/SignalingInfo;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$7;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/signaling/SignalingManager;->addInvitedSignaling(Lcom/tencent/imsdk/signaling/SignalingInfo;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMSigMgrImpl"

    const-string v0, "addInvitedSignaling, info is invalid"

    .line 6
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "V2TIMSignalingInfo is invalid"

    .line 7
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public addSignalingListener(Lcom/tencent/imsdk/v2/V2TIMSignalingListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mHasValidSignalingListener:Z

    .line 6
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->checkSignalingListener()V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "V2TIMSigMgrImpl"

    const-string p2, "signaling cancel error, inviteID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1781

    const-string p2, "inviteID is empty"

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$4;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/signaling/SignalingManager;->cancel(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getSignalingInfo(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/signaling/SignalingManager;->getSignalingInfo(Lcom/tencent/imsdk/message/Message;)Lcom/tencent/imsdk/signaling/SignalingInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->setSignalingInfo(Lcom/tencent/imsdk/signaling/SignalingInfo;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public invite(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;ILcom/tencent/imsdk/v2/V2TIMCallback;)Ljava/lang/String;
    .locals 12

    move-object/from16 v0, p6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x1781

    const-string v3, "V2TIMSigMgrImpl"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "invitee is empty"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    const-string v0, "signaling invite error, invitee is empty"

    .line 3
    invoke-static {v3, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    if-gez p5, :cond_3

    if-eqz v0, :cond_2

    const-string v1, "signaling invite error, timeout invalid"

    .line 4
    invoke-static {v3, v1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "timeout invalid"

    .line 5
    invoke-interface {v0, v2, v1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-object v4

    :cond_3
    if-eqz p4, :cond_4

    .line 6
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->getMessageOfflinePushInfo()Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    move-result-object v4

    :cond_4
    move-object v9, v4

    .line 7
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v5

    new-instance v11, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$2;

    move-object v1, p0

    invoke-direct {v11, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lcom/tencent/imsdk/signaling/SignalingManager;->invite(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/imsdk/message/MessageOfflinePushInfo;ILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inviteInGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILcom/tencent/imsdk/v2/V2TIMCallback;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x1781

    const/4 v3, 0x0

    const-string v4, "V2TIMSigMgrImpl"

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "groupID is empty"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    const-string v0, "signaling invite error, groupID is empty"

    .line 3
    invoke-static {v4, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    if-eqz p2, :cond_5

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-gez p5, :cond_4

    if-eqz v0, :cond_3

    const-string v1, "signaling invite error, timeout invalid"

    .line 5
    invoke-static {v4, v1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "timeout invalid"

    .line 6
    invoke-interface {v0, v2, v1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_3
    return-object v3

    .line 7
    :cond_4
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v5

    new-instance v11, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$3;

    move-object v1, p0

    invoke-direct {v11, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lcom/tencent/imsdk/signaling/SignalingManager;->inviteInGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    move-object v1, p0

    if-eqz v0, :cond_6

    const-string v5, "signaling invite error, inviteeList is empty"

    .line 8
    invoke-static {v4, v5}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "inviteeList is empty"

    .line 9
    invoke-interface {v0, v2, v4}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_6
    return-object v3
.end method

.method public modifyInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "V2TIMSigMgrImpl"

    const-string p2, "modifyInvitation error, inviteID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1781

    const-string p2, "inviteID is empty"

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$8;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/signaling/SignalingManager;->modifyInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMSigMgrImpl"

    const-string p2, "signaling reject invite, inviteID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "inviteID is null"

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$6;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/signaling/SignalingManager;->reject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public removeSignalingListener(Lcom/tencent/imsdk/v2/V2TIMSignalingListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mHasValidSignalingListener:Z

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->checkSignalingListener()V

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method unInit()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mSignalingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->mHasValidSignalingListener:Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
