.class public Lcom/unity3d/scar/adapter/common/DispatchGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _runnable:Ljava/lang/Runnable;

.field private _threadCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_threadCount:I

    return-void
.end method

.method private notifyGroup()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_threadCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized enter()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_threadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_threadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized leave()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_threadCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_threadCount:I

    .line 2
    invoke-direct {p0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->notifyGroup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notify(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/DispatchGroup;->_runnable:Ljava/lang/Runnable;

    .line 2
    invoke-direct {p0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->notifyGroup()V

    return-void
.end method
