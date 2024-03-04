.class public Lcom/xiaomi/push/y0;
.super Lcom/xiaomi/push/i1;
.source "SourceFile"


# instance fields
.field private D:Ljava/lang/Thread;

.field private E:Lcom/xiaomi/push/t0;

.field private F:Lcom/xiaomi/push/u0;

.field private G:[B


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/d1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/i1;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/d1;)V

    return-void
.end method

.method private P(Z)Lcom/xiaomi/push/r0;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/x0;

    invoke-direct {v0}, Lcom/xiaomi/push/x0;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/r0;->i(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static synthetic Q(Lcom/xiaomi/push/y0;)Lcom/xiaomi/push/t0;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/y0;->E:Lcom/xiaomi/push/t0;

    return-object p0
.end method

.method private U()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/t0;

    iget-object v1, p0, Lcom/xiaomi/push/i1;->u:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/push/t0;-><init>(Ljava/io/InputStream;Lcom/xiaomi/push/y0;)V

    iput-object v0, p0, Lcom/xiaomi/push/y0;->E:Lcom/xiaomi/push/t0;

    new-instance v0, Lcom/xiaomi/push/u0;

    iget-object v1, p0, Lcom/xiaomi/push/i1;->u:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/push/u0;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/push/y0;)V

    iput-object v0, p0, Lcom/xiaomi/push/y0;->F:Lcom/xiaomi/push/u0;

    new-instance v0, Lcom/xiaomi/push/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/c1;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/z0;-><init>(Lcom/xiaomi/push/y0;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/y0;->D:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/push/cd;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected declared-synchronized D()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/push/y0;->U()V

    iget-object v0, p0, Lcom/xiaomi/push/y0;->F:Lcom/xiaomi/push/u0;

    invoke-virtual {v0}, Lcom/xiaomi/push/u0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized E(ILjava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/y0;->E:Lcom/xiaomi/push/t0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/t0;->e()V

    iput-object v1, p0, Lcom/xiaomi/push/y0;->E:Lcom/xiaomi/push/t0;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/y0;->F:Lcom/xiaomi/push/u0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/xiaomi/push/u0;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Ltf/c;->o(Ljava/lang/Throwable;)V

    :goto_0
    iput-object v1, p0, Lcom/xiaomi/push/y0;->F:Lcom/xiaomi/push/u0;

    :cond_1
    iput-object v1, p0, Lcom/xiaomi/push/y0;->G:[B

    invoke-super {p0, p1, p2}, Lcom/xiaomi/push/i1;->E(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected J(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/y0;->F:Lcom/xiaomi/push/u0;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/y0;->P(Z)Lcom/xiaomi/push/r0;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] SND ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/y0;->t(Lcom/xiaomi/push/r0;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/i1;->N()V

    return-void

    :cond_0
    new-instance p1, Lcom/xiaomi/push/cd;

    const-string v0, "The BlobWriter is null."

    invoke-direct {p1, v0}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method R(Lcom/xiaomi/push/r0;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV blob chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/i1;->O()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/i1;->L(ILjava/lang/Exception;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/c1;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/c1$a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/c1$a;->a(Lcom/xiaomi/push/r0;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method declared-synchronized S()[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/y0;->G:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/c1;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/o0;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/c1;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/c1;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/i0;->i([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/y0;->G:[B

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/y0;->G:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method T(Lcom/xiaomi/push/r1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/c1;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/c1$a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/c1$a;->b(Lcom/xiaomi/push/r1;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j(Lcom/xiaomi/push/r1;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/push/r0;->b(Lcom/xiaomi/push/r1;Ljava/lang/String;)Lcom/xiaomi/push/r0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/y0;->t(Lcom/xiaomi/push/r0;)V

    return-void
.end method

.method public declared-synchronized k(Lcom/xiaomi/push/service/az$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/i1;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/xiaomi/push/q0;->a(Lcom/xiaomi/push/service/az$b;Ljava/lang/String;Lcom/xiaomi/push/c1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p0}, Lcom/xiaomi/push/q0;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/c1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n([Lcom/xiaomi/push/r0;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/y0;->t(Lcom/xiaomi/push/r0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t(Lcom/xiaomi/push/r0;)V
    .locals 11

    iget-object v0, p0, Lcom/xiaomi/push/y0;->F:Lcom/xiaomi/push/u0;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/u0;->a(Lcom/xiaomi/push/r0;)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/push/c1;->q:J

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/xiaomi/push/c1;->o:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/push/e2;->j(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/c1;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/c1$a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/c1$a;->a(Lcom/xiaomi/push/r0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/push/cd;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Lcom/xiaomi/push/cd;

    const-string v0, "the writer is null."

    invoke-direct {p1, v0}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;)V

    throw p1
.end method
