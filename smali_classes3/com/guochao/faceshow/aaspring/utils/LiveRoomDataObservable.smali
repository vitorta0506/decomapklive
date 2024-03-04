.class public Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;


# instance fields
.field private observerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->instance:Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->instance:Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->instance:Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->instance:Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyRoomItemAdmin(IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;

    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;->onRoomItemAdminNotify(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRoomItemKick(IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;

    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;->onRoomItemKickNotify(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRoomItemMute(IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;

    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;->onRoomItemMuteNotify(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllObserver()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeObserver(Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/LiveRoomDataObservable;->observerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
