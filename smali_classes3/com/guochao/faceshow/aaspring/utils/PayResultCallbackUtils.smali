.class public Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;

.field private static final resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->resultList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;
    .locals 2

    const-class v0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->instance:Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->instance:Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;

    .line 3
    :cond_0
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->instance:Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addCancel()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;

    .line 2
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;->onPayCancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addError()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;

    .line 2
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;->onPayFaile()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addListener(Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSuccess()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;

    .line 2
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;->onPaySuccessful()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/guochao/faceshow/aaspring/utils/PayResultCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PayResultCallbackUtils;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
