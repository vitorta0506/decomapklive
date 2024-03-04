.class Lcom/guochao/faceshow/aaspring/manager/im/b$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->t0(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/imsdk/v2/V2TIMCallback;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->c:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Q(Lcom/guochao/faceshow/aaspring/manager/im/b;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R(Lcom/guochao/faceshow/aaspring/manager/im/b;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->T(Lcom/guochao/faceshow/aaspring/manager/im/b;)I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->c:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-virtual {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->t0(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceCastIMManager"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->c:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMCallback;

    .line 10
    invoke-interface {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onSuccess()V
    .locals 5

    const-string v0, "24HourMessage"

    const-string v1, "IM\u767b\u5f55\u6210\u529f"

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->j()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->c:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMCallback;

    .line 6
    invoke-interface {v1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Q(Lcom/guochao/faceshow/aaspring/manager/im/b;Z)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->S(Lcom/guochao/faceshow/aaspring/manager/im/b;I)I

    const-string v0, "FaceCastIMManager"

    const-string v1, "login onSuccess: "

    .line 9
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->E0()V

    .line 11
    invoke-static {}, Lo9/b;->d()Lo9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lo9/a;->c(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/GiftMessageRefresh;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/GiftMessageRefresh;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->U(Lcom/guochao/faceshow/aaspring/manager/im/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$l;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->getServerTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->V(Lcom/guochao/faceshow/aaspring/manager/im/b;J)J

    :cond_2
    return-void
.end method
