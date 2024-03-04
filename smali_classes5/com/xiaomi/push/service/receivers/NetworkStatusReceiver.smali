.class public Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z = false


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    const/4 p1, 0x1

    sput-boolean p1, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/w;->H()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->y()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.push.network_status_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/push/service/a;->h(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/a;->i(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ltf/c;->o(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/xiaomi/push/e2;->h(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/push/p3;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/w;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/w;->P()V

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/push/p3;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/am;->a:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/j;->s(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->b:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/j;->t(Landroid/content/Context;)V

    :cond_3
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->c:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/j;->h0(Landroid/content/Context;)V

    :cond_4
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->d:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/j;->f0(Landroid/content/Context;)V

    :cond_5
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->e:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/j;->e0(Landroid/content/Context;)V

    :cond_6
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->f:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/j;->g0(Landroid/content/Context;)V

    :cond_7
    invoke-static {}, Lcom/xiaomi/mipush/sdk/g;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/g;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/g;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/g;->b(Landroid/content/Context;)V

    :cond_8
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/f;->b(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-boolean p2, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lsf/f;->c()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/xiaomi/push/service/receivers/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/receivers/a;-><init>(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
