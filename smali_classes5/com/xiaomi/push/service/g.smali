.class final Lcom/xiaomi/push/service/g;
.super Lcom/xiaomi/push/service/q0$a;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic d:Lcom/xiaomi/push/service/z1;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/z1;)V
    .locals 0

    iput-object p4, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    iput-object p5, p0, Lcom/xiaomi/push/service/g;->d:Lcom/xiaomi/push/service/z1;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/q0$a;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method b(Lcom/xiaomi/push/service/q0;)V
    .locals 6

    const-string v0, "GAID"

    const-string v1, "gaid"

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/service/q0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lsf/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lsf/b;->d(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/push/service/q0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/push/dt;

    invoke-direct {p1}, Lcom/xiaomi/push/dt;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/push/service/g;->d:Lcom/xiaomi/push/service/z1;

    iget-object v0, v0, Lcom/xiaomi/push/service/z1;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    sget-object v0, Lcom/xiaomi/push/df;->g:Lcom/xiaomi/push/df;

    iget-object v0, v0, Lcom/xiaomi/push/df;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->a(Ljava/util/Map;)Lcom/xiaomi/push/dt;

    invoke-virtual {p1}, Lcom/xiaomi/push/dt;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "rm_gpid"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/g;->d:Lcom/xiaomi/push/service/z1;

    iget-object v1, v1, Lcom/xiaomi/push/service/z1;->d:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    invoke-static {v0, v1, p1, v2}, Lcom/xiaomi/push/service/f;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;)Lcom/xiaomi/push/dq;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/h2;->d(Lcom/xiaomi/push/ef;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    const-string p1, "not low upload gpid"

    :goto_0
    invoke-static {p1}, Ltf/c;->s(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0, v1, v3}, Lcom/xiaomi/push/service/q0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/push/dt;

    invoke-direct {p1}, Lcom/xiaomi/push/dt;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/push/service/g;->d:Lcom/xiaomi/push/service/z1;

    iget-object v0, v0, Lcom/xiaomi/push/service/z1;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    sget-object v0, Lcom/xiaomi/push/df;->g:Lcom/xiaomi/push/df;

    iget-object v0, v0, Lcom/xiaomi/push/df;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/dt;->a(Ljava/util/Map;)Lcom/xiaomi/push/dt;

    invoke-virtual {p1}, Lcom/xiaomi/push/dt;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/g;->d:Lcom/xiaomi/push/service/z1;

    iget-object v1, v1, Lcom/xiaomi/push/service/z1;->d:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    invoke-static {v0, v1, p1, v2}, Lcom/xiaomi/push/service/f;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;)Lcom/xiaomi/push/dq;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/h2;->d(Lcom/xiaomi/push/ef;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    const-string p1, "upload gaid. "

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
