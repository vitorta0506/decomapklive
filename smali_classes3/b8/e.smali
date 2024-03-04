.class public Lb8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb8/d<",
        "Lcom/guochao/faceshow/bean/UserBean;",
        ">;"
    }
.end annotation


# static fields
.field private static d:Lb8/e;


# instance fields
.field a:Lcom/guochao/faceshow/bean/UserBean;

.field private b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb8/d$a;",
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
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lb8/e;->c:Ljava/util/List;

    return-void
.end method

.method private e(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 5

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 2
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 3
    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x1

    .line 4
    invoke-virtual {p2, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-virtual {p2, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-virtual {p2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 7
    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 8
    invoke-virtual {p2, v0, v4}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static g()Lb8/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb8/d<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb8/e;->d:Lb8/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lb8/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb8/e;->d:Lb8/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb8/e;

    invoke-direct {v1}, Lb8/e;-><init>()V

    sput-object v1, Lb8/e;->d:Lb8/e;

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
    sget-object v0, Lb8/e;->d:Lb8/e;

    return-object v0
.end method

.method public static h()V
    .locals 4

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/bean/UserBean;->setRecharged(I)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result v2

    const-string v3, "recharged"

    invoke-static {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lb8/d;->a(Lb8/a;Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lb8/a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lb8/b;->a(Lb8/d;Lb8/a;Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb8/e;->f()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lb8/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lb8/e;->f()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Lb8/a;ZZZ)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb8/e;->i(Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

.method public f()Lcom/guochao/faceshow/bean/UserBean;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lb8/e;->a:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb8/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->c(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lb8/e;->a:Lcom/guochao/faceshow/bean/UserBean;

    :cond_0
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb8/e;->f()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb8/e;->f()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb8/e;->f()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;->convert(Lcom/guochao/faceshow/bean/UserBean;)Lcom/guochao/faceshow/session/model/UserSessionModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->updateUserSession(Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceCast:LoginManagerImpltoken"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb8/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userToken"

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lb8/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->h(Landroid/content/Context;Lcom/guochao/faceshow/bean/UserBean;Ljava/lang/String;Z)V

    .line 5
    :cond_0
    invoke-static {}, Lz7/a;->a()Lz7/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz7/a;->c(Lcom/guochao/faceshow/bean/UserBean;)V

    if-nez p1, :cond_1

    .line 6
    iget-object p2, p0, Lb8/e;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb8/d$a;

    .line 7
    invoke-interface {p3}, Lb8/d$a;->onLogout()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lb8/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lb8/d$a;

    .line 9
    iget-object v3, p0, Lb8/e;->a:Lcom/guochao/faceshow/bean/UserBean;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lb8/d$a;->onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    goto :goto_1

    :cond_2
    const-string p2, "last_login_time"

    const-wide/16 p3, -0x1

    .line 10
    invoke-static {p2, p3, p4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfLong(Ljava/lang/String;J)V

    const-string p2, "last_login_days"

    const/4 v2, 0x1

    cmp-long v3, v0, p3

    if-nez v3, :cond_3

    .line 12
    invoke-static {p2, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p2, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfInt(Ljava/lang/String;I)I

    move-result p3

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17
    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xa4cb800

    cmp-long v6, v4, v0

    if-ltz v6, :cond_4

    .line 18
    invoke-static {p2, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 19
    :cond_4
    invoke-direct {p0, p4, v3}, Lb8/e;->e(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p4

    if-ne p4, v2, :cond_5

    add-int/2addr p3, v2

    .line 20
    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    .line 21
    invoke-static {p2, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt(Ljava/lang/String;I)V

    .line 22
    :cond_6
    :goto_2
    iput-object p1, p0, Lb8/e;->a:Lcom/guochao/faceshow/bean/UserBean;

    if-eqz p1, :cond_7

    .line 23
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    sput-object p2, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->w:Ljava/lang/String;

    .line 24
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    sput-object p2, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->x:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceCast:LoginManagerImplmCurrentUsertoken"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_7
    sget-object p1, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    iget-object p2, p0, Lb8/e;->a:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/utils/AppContentFilter;->setCurrentUser(Lcom/guochao/faceshow/bean/UserBean;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb8/e;->b:Landroid/content/Context;

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    new-instance v0, Lb8/e$a;

    invoke-direct {v0, p0}, Lb8/e$a;-><init>(Lb8/e;)V

    invoke-virtual {p1, v0}, Lp9/a;->c(Lp9/a$e;)V

    return-void
.end method

.method public registerOnUserChangedListener(Lb8/d$a;)V
    .locals 1

    iget-object v0, p0, Lb8/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOnUserChangedListener(Lb8/d$a;)V
    .locals 1

    iget-object v0, p0, Lb8/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
