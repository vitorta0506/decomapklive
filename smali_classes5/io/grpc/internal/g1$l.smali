.class final Lio/grpc/internal/g1$l;
.super Lio/grpc/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/y<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/d0;

.field private final b:Lio/grpc/d;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private final e:Lio/grpc/r;

.field private f:Lio/grpc/c;

.field private g:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/d0;Lio/grpc/d;Ljava/util/concurrent/Executor;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/d0;",
            "Lio/grpc/d;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/y;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/internal/g1$l;->a:Lio/grpc/d0;

    .line 3
    iput-object p2, p0, Lio/grpc/internal/g1$l;->b:Lio/grpc/d;

    .line 4
    iput-object p4, p0, Lio/grpc/internal/g1$l;->d:Lio/grpc/MethodDescriptor;

    .line 5
    invoke-virtual {p5}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lio/grpc/internal/g1$l;->c:Ljava/util/concurrent/Executor;

    .line 6
    invoke-virtual {p5, p3}, Lio/grpc/c;->n(Ljava/util/concurrent/Executor;)Lio/grpc/c;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/g1$l;->f:Lio/grpc/c;

    .line 7
    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/g1$l;->e:Lio/grpc/r;

    return-void
.end method

.method static synthetic g(Lio/grpc/internal/g1$l;)Lio/grpc/r;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/g1$l;->e:Lio/grpc/r;

    return-object p0
.end method

.method private h(Lio/grpc/g$a;Lio/grpc/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/g1$l;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/g1$l$a;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/internal/g1$l$a;-><init>(Lio/grpc/internal/g1$l;Lio/grpc/g$a;Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$l;->g:Lio/grpc/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lio/grpc/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public e(Lio/grpc/g$a;Lio/grpc/s0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/s0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/grpc/internal/t1;

    iget-object v1, p0, Lio/grpc/internal/g1$l;->d:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/g1$l;->f:Lio/grpc/c;

    invoke-direct {v0, v1, p2, v2}, Lio/grpc/internal/t1;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;)V

    .line 2
    iget-object v1, p0, Lio/grpc/internal/g1$l;->a:Lio/grpc/d0;

    invoke-virtual {v1, v0}, Lio/grpc/d0;->a(Lio/grpc/n0$f;)Lio/grpc/d0$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/grpc/d0$b;->d()Lio/grpc/Status;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/grpc/Status;->p()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-direct {p0, p1, v1}, Lio/grpc/internal/g1$l;->h(Lio/grpc/g$a;Lio/grpc/Status;)V

    .line 6
    invoke-static {}, Lio/grpc/internal/g1;->X()Lio/grpc/g;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/g1$l;->g:Lio/grpc/g;

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/grpc/d0$b;->c()Lio/grpc/h;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lio/grpc/d0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/j1;

    .line 9
    iget-object v2, p0, Lio/grpc/internal/g1$l;->d:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v2}, Lio/grpc/internal/j1;->f(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/j1$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v2, p0, Lio/grpc/internal/g1$l;->f:Lio/grpc/c;

    sget-object v3, Lio/grpc/internal/j1$b;->g:Lio/grpc/c$a;

    invoke-virtual {v2, v3, v0}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/g1$l;->f:Lio/grpc/c;

    :cond_1
    if-eqz v1, :cond_2

    .line 11
    iget-object v0, p0, Lio/grpc/internal/g1$l;->d:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/g1$l;->f:Lio/grpc/c;

    iget-object v3, p0, Lio/grpc/internal/g1$l;->b:Lio/grpc/d;

    invoke-interface {v1, v0, v2, v3}, Lio/grpc/h;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/g1$l;->g:Lio/grpc/g;

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/g1$l;->b:Lio/grpc/d;

    iget-object v1, p0, Lio/grpc/internal/g1$l;->d:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/g1$l;->f:Lio/grpc/c;

    invoke-virtual {v0, v1, v2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/g1$l;->g:Lio/grpc/g;

    .line 13
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/g1$l;->g:Lio/grpc/g;

    invoke-virtual {v0, p1, p2}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    return-void
.end method

.method protected f()Lio/grpc/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/g1$l;->g:Lio/grpc/g;

    return-object v0
.end method
