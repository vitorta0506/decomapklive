.class Leh/s0$c$c$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/s0$c$c$b;->c(Lio/grpc/t0$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/t0$g;

.field final synthetic b:Leh/s0$c$c$b;


# direct methods
.method constructor <init>(Leh/s0$c$c$b;Lio/grpc/t0$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leh/s0$c$c$b$b;->b:Leh/s0$c$c$b;

    iput-object p2, p0, Leh/s0$c$c$b$b;->a:Lio/grpc/t0$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Leh/s0$c$c$b$b;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-boolean v1, v0, Leh/s0$c$a;->h:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Leh/s0$c$c;->m(Leh/s0$c$c;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 3
    iget-object v0, p0, Leh/s0$c$c$b$b;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v0, v0, Leh/s0$c$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leh/s0;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Leh/s0$c$c$b$b;->a:Lio/grpc/t0$g;

    invoke-virtual {v3}, Lio/grpc/t0$g;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/x;

    .line 6
    invoke-virtual {v4}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v6

    sget-object v7, Leh/o1;->e:Lio/grpc/a$c;

    .line 7
    invoke-static {}, Leh/s0;->l()Leh/t1;

    move-result-object v8

    .line 8
    invoke-virtual {v6, v7, v8}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v6

    .line 10
    new-instance v7, Lio/grpc/x;

    invoke-virtual {v4}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v4, v6}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v1

    .line 11
    invoke-static {}, Leh/s0;->l()Leh/t1;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 12
    invoke-static {v7, v4}, Leh/b;->b(Lio/grpc/x;Ljava/util/List;)Lio/grpc/x;

    move-result-object v4

    .line 13
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Leh/s0$c$c$b$b;->b:Leh/s0$c$c$b;

    iget-object v1, v1, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v6, v1, Leh/s0$c$a;->a:Ljava/lang/String;

    iget-object v7, v1, Leh/s0$c$a;->b:Leh/j0$d;

    iget-object v8, v1, Leh/s0$c$a;->c:Ljava/lang/Long;

    iget-object v9, v1, Leh/s0$c$a;->d:Leh/i1;

    iget-object v1, v1, Leh/s0$c$c;->p:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    .line 15
    invoke-static {v1}, Leh/s0;->p(Leh/s0;)Lio/grpc/p0;

    move-result-object v10

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 17
    invoke-static/range {v6 .. v11}, Leh/s0;->m(Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/p0;Ljava/util/List;)Leh/w1$a$a;

    move-result-object v1

    .line 18
    iget-object v3, p0, Leh/s0$c$c$b$b;->b:Leh/s0$c$c$b;

    iget-object v3, v3, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    sget-object v4, Lio/grpc/Status;->f:Lio/grpc/Status;

    iput-object v4, v3, Leh/s0$c$a;->e:Lio/grpc/Status;

    .line 19
    iput-boolean v5, v3, Leh/s0$c$a;->f:Z

    .line 20
    new-instance v4, Leh/s0$b;

    invoke-direct {v4, v2, v0, v1}, Leh/s0$b;-><init>(Ljava/util/List;Ljava/lang/String;Leh/w1$a$a;)V

    iput-object v4, v3, Leh/s0$c$a;->g:Leh/s0$b;

    .line 21
    iget-object v0, p0, Leh/s0$c$c$b$b;->b:Leh/s0$c$c$b;

    iget-object v0, v0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v0, v0, Leh/s0$c$c;->p:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->g(Leh/s0$c;)V

    return-void
.end method
