.class public Ljb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljb/a;


# instance fields
.field private a:Ljb/b;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljb/a;->b:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Ljb/a;->c:Ljava/lang/String;

    const-string v0, "app_in_un_defined"

    .line 4
    iput-object v0, p0, Ljb/a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljb/a;)Ljb/b;
    .locals 0

    iget-object p0, p0, Ljb/a;->a:Ljb/b;

    return-object p0
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ljb/a;->b:Z

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ljb/a;->a:Ljb/b;

    invoke-virtual {v1}, Ljb/b;->g()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ljb/a$a;

    invoke-direct {v2, p0, v0}, Ljb/a$a;-><init>(Ljb/a;Landroid/app/Activity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static c()Ljb/a;
    .locals 2

    .line 1
    sget-object v0, Ljb/a;->e:Ljb/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ljb/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ljb/a;->e:Ljb/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljb/a;

    invoke-direct {v1}, Ljb/a;-><init>()V

    sput-object v1, Ljb/a;->e:Ljb/a;

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
    sget-object v0, Ljb/a;->e:Ljb/a;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljb/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Ljb/a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ljb/a;->b:Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Ljb/a;->a:Ljb/b;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Ljb/b;

    invoke-direct {v1}, Ljb/b;-><init>()V

    iput-object v1, p0, Ljb/a;->a:Ljb/b;

    .line 8
    :cond_2
    iget-object v1, p0, Ljb/a;->a:Ljb/b;

    invoke-virtual {v1}, Ljb/b;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Ljb/a;->a:Ljb/b;

    invoke-virtual {v1}, Ljb/b;->b()V

    .line 10
    :cond_3
    iget-object v1, p0, Ljb/a;->a:Ljb/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljb/b;->d(Z)V

    .line 11
    iget-object v1, p0, Ljb/a;->a:Ljb/b;

    invoke-virtual {v1, v2}, Ljb/b;->e(Z)V

    .line 12
    iget-object v1, p0, Ljb/a;->a:Ljb/b;

    invoke-virtual {v1, v0}, Ljb/b;->a(Landroid/content/Context;)V

    .line 13
    iget-object v0, p0, Ljb/a;->a:Ljb/b;

    invoke-virtual {v0, p1}, Ljb/b;->f(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Ljb/a;->d:Ljava/lang/String;

    const-string v0, "app_in_background"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    invoke-direct {p0}, Ljb/a;->b()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onEventBus(Landroid/content/Intent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_in_background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object v1, p0, Ljb/a;->d:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_in_forground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iput-object v0, p0, Ljb/a;->d:Ljava/lang/String;

    .line 5
    iget-boolean p1, p0, Ljb/a;->b:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Ljb/a;->a:Ljb/b;

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Ljb/a;->b()V

    :cond_2
    :goto_0
    return-void
.end method
