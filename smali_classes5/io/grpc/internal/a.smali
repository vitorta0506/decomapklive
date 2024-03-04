.class public abstract Lio/grpc/internal/a;
.super Lio/grpc/internal/d;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/q;
.implements Lio/grpc/internal/m1$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/a$a;,
        Lio/grpc/internal/a$c;,
        Lio/grpc/internal/a$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lio/grpc/internal/p2;

.field private final b:Lio/grpc/internal/q0;

.field private c:Z

.field private d:Z

.field private e:Lio/grpc/s0;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/a;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/internal/r2;Lio/grpc/internal/i2;Lio/grpc/internal/p2;Lio/grpc/s0;Lio/grpc/c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/internal/d;-><init>()V

    const-string v0, "headers"

    .line 2
    invoke-static {p4, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportTracer"

    .line 3
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/internal/p2;

    iput-object p3, p0, Lio/grpc/internal/a;->a:Lio/grpc/internal/p2;

    .line 4
    invoke-static {p5}, Lio/grpc/internal/GrpcUtil;->p(Lio/grpc/c;)Z

    move-result p3

    iput-boolean p3, p0, Lio/grpc/internal/a;->c:Z

    .line 5
    iput-boolean p6, p0, Lio/grpc/internal/a;->d:Z

    if-nez p6, :cond_0

    .line 6
    new-instance p3, Lio/grpc/internal/m1;

    invoke-direct {p3, p0, p1, p2}, Lio/grpc/internal/m1;-><init>(Lio/grpc/internal/m1$d;Lio/grpc/internal/r2;Lio/grpc/internal/i2;)V

    iput-object p3, p0, Lio/grpc/internal/a;->b:Lio/grpc/internal/q0;

    .line 7
    iput-object p4, p0, Lio/grpc/internal/a;->e:Lio/grpc/s0;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lio/grpc/internal/a$a;

    invoke-direct {p1, p0, p4, p2}, Lio/grpc/internal/a$a;-><init>(Lio/grpc/internal/a;Lio/grpc/s0;Lio/grpc/internal/i2;)V

    iput-object p1, p0, Lio/grpc/internal/a;->b:Lio/grpc/internal/q0;

    :goto_0
    return-void
.end method

.method static synthetic v()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/internal/a;->g:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/a;->y()Lio/grpc/internal/a$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/d$a;->y(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/a;->b:Lio/grpc/internal/q0;

    invoke-interface {v0, p1}, Lio/grpc/internal/q0;->d(I)V

    return-void
.end method

.method public final e(Lio/grpc/Status;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lio/grpc/internal/a;->f:Z

    .line 3
    invoke-virtual {p0}, Lio/grpc/internal/a;->u()Lio/grpc/internal/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/a$b;->e(Lio/grpc/Status;)V

    return-void
.end method

.method public final g(Lio/grpc/v;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/a;->y()Lio/grpc/internal/a$c;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/a$c;->A(Lio/grpc/internal/a$c;Lio/grpc/v;)V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    invoke-super {p0}, Lio/grpc/internal/d;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/a;->y()Lio/grpc/internal/a$c;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/a$c;->z(Lio/grpc/internal/a$c;Z)V

    return-void
.end method

.method public final l(Lio/grpc/internal/x0;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/grpc/internal/q;->f()Lio/grpc/a;

    move-result-object v0

    .line 2
    sget-object v1, Lio/grpc/a0;->a:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/x0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/x0;

    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/a;->y()Lio/grpc/internal/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/a$c;->I()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/a;->y()Lio/grpc/internal/a$c;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/a$c;->B(Lio/grpc/internal/a$c;)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/internal/d;->q()V

    :cond_0
    return-void
.end method

.method public n(Lio/grpc/t;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/internal/a;->e:Lio/grpc/s0;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->c:Lio/grpc/s0$i;

    invoke-virtual {v0, v1}, Lio/grpc/s0;->i(Lio/grpc/s0$i;)V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/t;->i(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3
    iget-object p1, p0, Lio/grpc/internal/a;->e:Lio/grpc/s0;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lio/grpc/internal/ClientStreamListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/a;->y()Lio/grpc/internal/a$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/a$c;->M(Lio/grpc/internal/ClientStreamListener;)V

    .line 2
    iget-boolean p1, p0, Lio/grpc/internal/a;->d:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/internal/a;->u()Lio/grpc/internal/a$b;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/a;->e:Lio/grpc/s0;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/a$b;->g(Lio/grpc/s0;[B)V

    .line 4
    iput-object v1, p0, Lio/grpc/internal/a;->e:Lio/grpc/s0;

    :cond_0
    return-void
.end method

.method public final p(Lio/grpc/internal/q2;ZZI)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/a;->u()Lio/grpc/internal/a$b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/a$b;->f(Lio/grpc/internal/q2;ZZI)V

    return-void
.end method

.method protected final r()Lio/grpc/internal/q0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/a;->b:Lio/grpc/internal/q0;

    return-object v0
.end method

.method protected bridge synthetic t()Lio/grpc/internal/d$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/a;->y()Lio/grpc/internal/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract u()Lio/grpc/internal/a$b;
.end method

.method protected w()Lio/grpc/internal/p2;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/a;->a:Lio/grpc/internal/p2;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/internal/a;->c:Z

    return v0
.end method

.method protected abstract y()Lio/grpc/internal/a$c;
.end method
