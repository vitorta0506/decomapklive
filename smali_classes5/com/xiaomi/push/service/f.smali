.class final Lcom/xiaomi/push/service/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/push/r0;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/dq;

    invoke-direct {v0}, Lcom/xiaomi/push/dq;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/push/h2;->c(Lcom/xiaomi/push/ef;[B)V

    invoke-static {p0}, Lcom/xiaomi/push/service/a2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/z1;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/xiaomi/push/service/f;->b(Lcom/xiaomi/push/service/z1;Landroid/content/Context;Lcom/xiaomi/push/dq;)Lcom/xiaomi/push/r0;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/push/ej; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ltf/c;->o(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Lcom/xiaomi/push/service/z1;Landroid/content/Context;Lcom/xiaomi/push/dq;)Lcom/xiaomi/push/r0;
    .locals 4

    :try_start_0
    new-instance p1, Lcom/xiaomi/push/r0;

    invoke-direct {p1}, Lcom/xiaomi/push/r0;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/r0;->g(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/z1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/r0;->u(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/push/service/f;->f(Lcom/xiaomi/push/dq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/r0;->r(Ljava/lang/String;)V

    const-string v0, "SECMSG"

    const-string v1, "message"

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/r0;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/z1;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/dk;

    const/4 v2, 0x0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/dk;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/push/h2;->d(Lcom/xiaomi/push/ef;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/push/service/z1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/push/r0;->l([BLjava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/xiaomi/push/r0;->k(S)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "try send mi push message. packagename:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/xiaomi/push/dq;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/cz;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Ltf/c;->o(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/dq;
    .locals 2

    new-instance v0, Lcom/xiaomi/push/dt;

    invoke-direct {v0}, Lcom/xiaomi/push/dt;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-static {}, Lcom/xiaomi/push/r1;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->a(Z)Lcom/xiaomi/push/dt;

    sget-object v1, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/f;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;)Lcom/xiaomi/push/dq;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;)Lcom/xiaomi/push/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/ef<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/push/cz;",
            ")",
            "Lcom/xiaomi/push/dq;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/push/service/f;->e(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;Z)Lcom/xiaomi/push/dq;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;Z)Lcom/xiaomi/push/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/ef<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/push/cz;",
            "Z)",
            "Lcom/xiaomi/push/dq;"
        }
    .end annotation

    invoke-static {p2}, Lcom/xiaomi/push/h2;->d(Lcom/xiaomi/push/ef;)[B

    move-result-object p2

    new-instance v0, Lcom/xiaomi/push/dq;

    invoke-direct {v0}, Lcom/xiaomi/push/dq;-><init>()V

    new-instance v1, Lcom/xiaomi/push/dk;

    invoke-direct {v1}, Lcom/xiaomi/push/dk;-><init>()V

    const-wide/16 v2, 0x5

    iput-wide v2, v1, Lcom/xiaomi/push/dk;->a:J

    const-string v2, "fakeid"

    iput-object v2, v1, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dq;->a(Lcom/xiaomi/push/dk;)Lcom/xiaomi/push/dq;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/dq;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/push/dq;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/dq;->a(Lcom/xiaomi/push/cz;)Lcom/xiaomi/push/dq;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/dq;->b(Z)Lcom/xiaomi/push/dq;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/dq;->b(Ljava/lang/String;)Lcom/xiaomi/push/dq;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/dq;->a(Z)Lcom/xiaomi/push/dq;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/dq;->a(Ljava/lang/String;)Lcom/xiaomi/push/dq;

    return-object v0
.end method

.method private static f(Lcom/xiaomi/push/dq;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/di;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/push/di;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "ext_traffic_source_pkg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/push/dq;->b:Ljava/lang/String;

    return-object p0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static h(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/z1;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/z1;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/az$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare account. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaomi/push/service/az$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltf/c;->l(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/f;->j(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/az$b;)V

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/az;->l(Lcom/xiaomi/push/service/az$b;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/q0;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q0;

    move-result-object v0

    new-instance v7, Lcom/xiaomi/push/service/g;

    const-wide/32 v3, 0x2a300

    const-string v2, "GAID"

    move-object v1, v7

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/g;-><init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/z1;)V

    invoke-virtual {v0, v7}, Lcom/xiaomi/push/service/q0;->f(Lcom/xiaomi/push/service/q0$a;)V

    :cond_0
    return-void
.end method

.method static i(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/dq;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/c1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/push/c1;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/push/service/a2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/z1;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/xiaomi/push/service/f;->b(Lcom/xiaomi/push/service/z1;Landroid/content/Context;Lcom/xiaomi/push/dq;)Lcom/xiaomi/push/r0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/c1;->t(Lcom/xiaomi/push/r0;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/xiaomi/push/cd;

    const-string p1, "Don\'t support XMPP connection."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/xiaomi/push/cd;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static j(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/az$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/az$b;->h(Landroid/os/Messenger;)V

    new-instance v0, Lcom/xiaomi/push/service/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/h;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/az$b;->i(Lcom/xiaomi/push/service/az$b$a;)V

    return-void
.end method

.method static k(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/c1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/push/c1;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p2}, Lcom/xiaomi/push/service/f;->a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/push/r0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/c1;->t(Lcom/xiaomi/push/r0;)V

    return-void

    :cond_0
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/d2;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Lcom/xiaomi/push/cd;

    const-string p1, "Don\'t support XMPP connection."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/xiaomi/push/cd;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static l(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/dq;
    .locals 2

    new-instance v0, Lcom/xiaomi/push/dt;

    invoke-direct {v0}, Lcom/xiaomi/push/dt;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    sget-object v1, Lcom/xiaomi/push/df;->ac:Lcom/xiaomi/push/df;

    iget-object v1, v1, Lcom/xiaomi/push/df;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->a(Z)Lcom/xiaomi/push/dt;

    sget-object v1, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/f;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;)Lcom/xiaomi/push/dq;

    move-result-object p0

    return-object p0
.end method

.method static m(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;)Lcom/xiaomi/push/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/ef<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/push/cz;",
            ")",
            "Lcom/xiaomi/push/dq;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/push/service/f;->e(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;Z)Lcom/xiaomi/push/dq;

    move-result-object p0

    return-object p0
.end method
