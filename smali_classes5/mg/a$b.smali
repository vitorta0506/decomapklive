.class public Lmg/a$b;
.super Lmg/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Lmg/a;


# direct methods
.method protected constructor <init>(Lmg/a;)V
    .locals 0

    iput-object p1, p0, Lmg/a$b;->g:Lmg/a;

    invoke-direct {p0, p1}, Lmg/b$b;-><init>(Lmg/b;)V

    return-void
.end method

.method private E(Lio/grpc/netty/shaded/io/netty/channel/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg/a$b;->g:Lmg/a;

    invoke-virtual {v0}, Lmg/a;->g1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lmg/a$b;->g:Lmg/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-static {v0}, Lmg/a;->V0(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmg/a$b;->g:Lmg/a;

    invoke-virtual {v0}, Lmg/a;->j1()Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 4
    sget-object v0, Lng/a;->a:Lng/a;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lmg/a$b;->g:Lmg/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmg/a;->X0(Lmg/a;Z)Z

    .line 7
    sget-object v0, Lng/b;->a:Lng/b;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :goto_0
    return-void
.end method

.method private F(Lio/grpc/netty/shaded/io/netty/channel/w;Lkg/j;Ljava/lang/Throwable;ZLio/grpc/netty/shaded/io/netty/channel/v0$c;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmg/a$b;->g:Lmg/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmg/b;->v:Z

    .line 3
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/w;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p5}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->d()V

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/w;->k()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 7
    invoke-interface {p1, p3}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    if-nez p4, :cond_2

    .line 8
    instance-of p2, p3, Ljava/lang/OutOfMemoryError;

    if-nez p2, :cond_2

    instance-of p2, p3, Ljava/io/IOException;

    if-eqz p2, :cond_3

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lmg/a$b;->E(Lio/grpc/netty/shaded/io/netty/channel/w;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final read()V
    .locals 9

    .line 1
    iget-object v0, p0, Lmg/a$b;->g:Lmg/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmg/a$b;->g:Lmg/a;

    invoke-virtual {v1, v0}, Lmg/a;->i1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lmg/a$b;->g:Lmg/a;

    invoke-virtual {v0}, Lmg/b;->L0()V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lmg/a$b;->g:Lmg/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v3

    .line 5
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->a()Lkg/k;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->R()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v7

    .line 7
    invoke-interface {v7, v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->c(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-interface {v7, v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->a(Lkg/k;)Lkg/j;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    :try_start_1
    iget-object v6, p0, Lmg/a$b;->g:Lmg/a;

    invoke-virtual {v6, v5}, Lmg/a;->Z0(Lkg/j;)I

    move-result v6

    invoke-interface {v7, v6}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->h(I)V

    .line 10
    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->k()I

    move-result v6

    const/4 v8, 0x1

    if-gtz v6, :cond_4

    .line 11
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12
    :try_start_2
    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->k()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_3

    .line 13
    :try_start_3
    iget-object v1, p0, Lmg/a$b;->g:Lmg/a;

    iput-boolean v4, v1, Lmg/b;->v:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v4, v2

    move v6, v8

    goto :goto_3

    :cond_3
    :goto_1
    move v4, v8

    goto :goto_2

    .line 14
    :cond_4
    :try_start_4
    invoke-interface {v7, v8}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->e(I)V

    .line 15
    iget-object v6, p0, Lmg/a$b;->g:Lmg/a;

    iput-boolean v4, v6, Lmg/b;->v:Z

    .line 16
    invoke-interface {v3, v5}, Lio/grpc/netty/shaded/io/netty/channel/w;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17
    :try_start_5
    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->g()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v5, :cond_1

    .line 18
    :goto_2
    :try_start_6
    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->d()V

    .line 19
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/channel/w;->k()Lio/grpc/netty/shaded/io/netty/channel/w;

    if-eqz v4, :cond_5

    .line 20
    invoke-direct {p0, v3}, Lmg/a$b;->E(Lio/grpc/netty/shaded/io/netty/channel/w;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 21
    :cond_5
    iget-object v1, p0, Lmg/a$b;->g:Lmg/a;

    iget-boolean v1, v1, Lmg/b;->v:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v5, v1

    move v6, v4

    move-object v4, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v5

    const/4 v6, 0x0

    move-object v5, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v4, v2

    const/4 v6, 0x0

    :goto_3
    move-object v2, p0

    .line 22
    :try_start_7
    invoke-direct/range {v2 .. v7}, Lmg/a$b;->F(Lio/grpc/netty/shaded/io/netty/channel/w;Lkg/j;Ljava/lang/Throwable;ZLio/grpc/netty/shaded/io/netty/channel/v0$c;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 23
    iget-object v1, p0, Lmg/a$b;->g:Lmg/a;

    iget-boolean v1, v1, Lmg/b;->v:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    :goto_4
    invoke-virtual {p0}, Lmg/b$b;->D()V

    :cond_6
    return-void

    :catchall_4
    move-exception v1

    .line 25
    iget-object v2, p0, Lmg/a$b;->g:Lmg/a;

    iget-boolean v2, v2, Lmg/b;->v:Z

    if-nez v2, :cond_7

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-virtual {p0}, Lmg/b$b;->D()V

    .line 27
    :cond_7
    throw v1
.end method
