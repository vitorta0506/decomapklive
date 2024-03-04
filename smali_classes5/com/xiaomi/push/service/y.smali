.class public Lcom/xiaomi/push/service/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private b(Lcom/xiaomi/push/o1;)V
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/push/o1;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/push/m;->c()Lcom/xiaomi/push/m;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/d1;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/m;->b(Ljava/lang/String;Z)Lcom/xiaomi/push/i;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/i;->o([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method

.method private e(Lcom/xiaomi/push/r1;)V
    .locals 9

    invoke-virtual {p1}, Lcom/xiaomi/push/r1;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/r1;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/az;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/az$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, v0, Lcom/xiaomi/push/service/az$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/push/r1;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/e2;->b(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/push/e2;->j(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    :cond_0
    return-void
.end method

.method private f(Lcom/xiaomi/push/r0;)V
    .locals 9

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/az;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/az$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, v0, Lcom/xiaomi/push/service/az$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->s()I

    move-result p1

    int-to-long v3, p1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/push/e2;->j(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/r0;)V
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v0

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/y;->f(Lcom/xiaomi/push/r0;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/y;->d(Lcom/xiaomi/push/r0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Blob chid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packetid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failure "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ltf/c;->n(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/xiaomi/push/r1;)V
    .locals 9

    invoke-virtual {p1}, Lcom/xiaomi/push/r1;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/y;->e(Lcom/xiaomi/push/r1;)V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/push/r1;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/r1;->p(Ljava/lang/String;)V

    :cond_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received wrong packet with chid = 0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltf/c;->l(Ljava/lang/String;)V

    :cond_2
    instance-of v1, p1, Lcom/xiaomi/push/p1;

    if-eqz v1, :cond_5

    const-string v1, "kick"

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/r1;->b(Ljava/lang/String;)Lcom/xiaomi/push/o1;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/xiaomi/push/r1;->o()Ljava/lang/String;

    move-result-object p1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/o1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "reason"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/o1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kicked by server, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaomi/push/service/az$b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltf/c;->l(Ljava/lang/String;)V

    const-string v1, "wait"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/push/service/az;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/az$b;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/az$b;)V

    sget-object v4, Lcom/xiaomi/push/service/az$c;->a:Lcom/xiaomi/push/service/az$c;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/push/service/az$b;->k(Lcom/xiaomi/push/service/az$c;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v4, 0x3

    move-object v2, v0

    move-object v3, p1

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/push/service/az;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    instance-of v1, p1, Lcom/xiaomi/push/q1;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/xiaomi/push/q1;

    invoke-virtual {v1}, Lcom/xiaomi/push/q1;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "redir"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "hosts"

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/r1;->b(Ljava/lang/String;)Lcom/xiaomi/push/o1;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/y;->b(Lcom/xiaomi/push/o1;)V

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->b()Lcom/xiaomi/push/service/s1;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2, v0, p1}, Lcom/xiaomi/push/service/s1;->j(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/push/r1;)V

    return-void
.end method

.method public d(Lcom/xiaomi/push/r0;)V
    .locals 12

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECMSG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->b()Lcom/xiaomi/push/service/s1;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2, v1, p1}, Lcom/xiaomi/push/service/s1;->i(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/push/r0;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv SECMSG errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->t()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Ltf/c;->l(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string v2, "BIND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "wait"

    const-string v4, " reason="

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->n()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/z;->m([B)Lcom/xiaomi/push/z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/xiaomi/push/service/az;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/az$b;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/push/z;->o()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->l(Ljava/lang/String;)V

    sget-object v7, Lcom/xiaomi/push/service/az$c;->c:Lcom/xiaomi/push/service/az$c;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/az$b;->k(Lcom/xiaomi/push/service/az$c;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/push/z;->n()Ljava/lang/String;

    move-result-object v11

    const-string p1, "auth"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/xiaomi/push/z;->q()Ljava/lang/String;

    move-result-object p1

    const-string v3, "invalid-sig"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: bind error invalid-sig token = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/xiaomi/push/service/az$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sec = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/xiaomi/push/service/az$b;->i:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->l(Ljava/lang/String;)V

    :cond_4
    sget-object v7, Lcom/xiaomi/push/service/az$c;->a:Lcom/xiaomi/push/service/az$c;

    const/4 v8, 0x1

    const/4 v9, 0x5

    goto :goto_2

    :cond_5
    const-string p1, "cancel"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object v7, Lcom/xiaomi/push/service/az$c;->a:Lcom/xiaomi/push/service/az$c;

    const/4 v8, 0x1

    const/4 v9, 0x7

    :goto_2
    invoke-virtual {v0}, Lcom/xiaomi/push/z;->q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/az$b;->k(Lcom/xiaomi/push/service/az$c;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/push/service/az;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1, v6}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/az$b;)V

    sget-object v7, Lcom/xiaomi/push/service/az$c;->a:Lcom/xiaomi/push/service/az$c;

    const/4 v8, 0x1

    const/4 v9, 0x7

    invoke-virtual {v0}, Lcom/xiaomi/push/z;->q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/az$b;->k(Lcom/xiaomi/push/service/az$c;IILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMACK: channel bind failed, chid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/push/z;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_8
    const-string v2, "KICK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->n()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/c0;->l([B)Lcom/xiaomi/push/c0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaomi/push/c0;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/xiaomi/push/c0;->p()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kicked by server, chid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " res= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaomi/push/service/az$b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/az;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/az$b;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/az$b;)V

    sget-object v6, Lcom/xiaomi/push/service/az$c;->a:Lcom/xiaomi/push/service/az$c;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/push/service/az$b;->k(Lcom/xiaomi/push/service/az$c;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    iget-object v2, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v5, 0x3

    move-object v3, v1

    move-object v4, p1

    move-object v6, v9

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/az;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->n()[B

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    invoke-static {v0}, Lcom/xiaomi/push/f0;->o([B)Lcom/xiaomi/push/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/f0;->q()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/xiaomi/push/service/o0;->e()Lcom/xiaomi/push/service/o0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/f0;->k()Lcom/xiaomi/push/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/o0;->i(Lcom/xiaomi/push/x;)V

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()V

    :cond_c
    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "received a server ping"

    invoke-static {p1}, Ltf/c;->l(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->b()V

    goto/16 :goto_4

    :cond_e
    const-string v1, "SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->n()[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/x;->m([B)Lcom/xiaomi/push/x;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/push/service/o0;->e()Lcom/xiaomi/push/service/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/o0;->i(Lcom/xiaomi/push/x;)V

    goto/16 :goto_4

    :cond_f
    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "U"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/xiaomi/push/r0;

    invoke-direct {v0}, Lcom/xiaomi/push/r0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/r0;->g(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCA"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/r0;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/r0;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/m0;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/push/service/m0;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/r0;)V

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "P"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->n()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/e0;->m([B)Lcom/xiaomi/push/e0;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/push/r0;

    invoke-direct {v2}, Lcom/xiaomi/push/r0;-><init>()V

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/r0;->g(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PCA"

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/push/r0;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/r0;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/push/e0;

    invoke-direct {v1}, Lcom/xiaomi/push/e0;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/push/e0;->n()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lcom/xiaomi/push/e0;->j()Lcom/xiaomi/push/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/e0;->k(Lcom/xiaomi/push/a;)Lcom/xiaomi/push/e0;

    :cond_11
    invoke-virtual {v1}, Lcom/xiaomi/push/g2;->h()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/push/r0;->l([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/m0;

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/push/service/m0;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/r0;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACK msgP: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOTIFY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->n()[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/d0;->m([B)Lcom/xiaomi/push/d0;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify by server err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/d0;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " desc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/d0;->n()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    :goto_4
    return-void
.end method
