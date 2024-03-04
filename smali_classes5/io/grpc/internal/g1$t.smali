.class Lio/grpc/internal/g1$t;
.super Lio/grpc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/g1$t$g;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Lio/grpc/d;

.field final synthetic d:Lio/grpc/internal/g1;


# direct methods
.method private constructor <init>(Lio/grpc/internal/g1;Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-direct {p0}, Lio/grpc/d;-><init>()V

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-static {}, Lio/grpc/internal/g1;->L()Lio/grpc/d0;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Lio/grpc/internal/g1$t$a;

    invoke-direct {p1, p0}, Lio/grpc/internal/g1$t$a;-><init>(Lio/grpc/internal/g1$t;)V

    iput-object p1, p0, Lio/grpc/internal/g1$t;->c:Lio/grpc/d;

    const-string p1, "authority"

    .line 6
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/g1$t;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/g1;Ljava/lang/String;Lio/grpc/internal/g1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/g1$t;-><init>(Lio/grpc/internal/g1;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lio/grpc/internal/g1$t;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic k(Lio/grpc/internal/g1$t;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/g1$t;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lio/grpc/internal/g1$t;Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/g1$t;->m(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p0

    return-object p0
.end method

.method private m(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/grpc/d0;

    if-nez v2, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$t;->c:Lio/grpc/d;

    invoke-virtual {v0, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, v2, Lio/grpc/internal/j1$c;

    if-eqz v0, :cond_2

    .line 4
    check-cast v2, Lio/grpc/internal/j1$c;

    iget-object v0, v2, Lio/grpc/internal/j1$c;->b:Lio/grpc/internal/j1;

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/internal/j1;->f(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/j1$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lio/grpc/internal/j1$b;->g:Lio/grpc/c$a;

    invoke-virtual {p2, v1, v0}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object p2

    .line 7
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/g1$t;->c:Lio/grpc/d;

    invoke-virtual {v0, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance v0, Lio/grpc/internal/g1$l;

    iget-object v3, p0, Lio/grpc/internal/g1$t;->c:Lio/grpc/d;

    iget-object v1, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    .line 9
    invoke-static {v1}, Lio/grpc/internal/g1;->W(Lio/grpc/internal/g1;)Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/g1$l;-><init>(Lio/grpc/d0;Lio/grpc/d;Ljava/util/concurrent/Executor;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/g1;->L()Lio/grpc/d0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/g1$t;->m(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$t$d;

    invoke-direct {v1, p0}, Lio/grpc/internal/g1$t$d;-><init>(Lio/grpc/internal/g1$t;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/g1;->L()Lio/grpc/d0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/g1$t;->m(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->t(Lio/grpc/internal/g1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance p1, Lio/grpc/internal/g1$t$e;

    invoke-direct {p1, p0}, Lio/grpc/internal/g1$t$e;-><init>(Lio/grpc/internal/g1$t;)V

    return-object p1

    .line 8
    :cond_2
    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object v0

    .line 9
    new-instance v1, Lio/grpc/internal/g1$t$g;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/grpc/internal/g1$t$g;-><init>(Lio/grpc/internal/g1$t;Lio/grpc/r;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V

    .line 10
    iget-object p1, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    iget-object p1, p1, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance p2, Lio/grpc/internal/g1$t$f;

    invoke-direct {p2, p0, v1}, Lio/grpc/internal/g1$t$f;-><init>(Lio/grpc/internal/g1$t;Lio/grpc/internal/g1$t$g;)V

    invoke-virtual {p1, p2}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/g1;->L()Lio/grpc/d0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/grpc/internal/g1$t;->q(Lio/grpc/d0;)V

    :cond_0
    return-void
.end method

.method o()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$t$b;

    invoke-direct {v1, p0}, Lio/grpc/internal/g1$t$b;-><init>(Lio/grpc/internal/g1$t;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method p()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$t$c;

    invoke-direct {v1, p0}, Lio/grpc/internal/g1$t$c;-><init>(Lio/grpc/internal/g1$t;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method q(Lio/grpc/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d0;

    .line 2
    iget-object v1, p0, Lio/grpc/internal/g1$t;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lio/grpc/internal/g1;->L()Lio/grpc/d0;

    move-result-object p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {p1}, Lio/grpc/internal/g1;->S(Lio/grpc/internal/g1;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {p1}, Lio/grpc/internal/g1;->S(Lio/grpc/internal/g1;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/g1$t$g;

    .line 5
    invoke-virtual {v0}, Lio/grpc/internal/g1$t$g;->p()V

    goto :goto_0

    :cond_0
    return-void
.end method
