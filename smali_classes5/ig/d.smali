.class final Lig/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/internal/k1$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lio/grpc/Status;

.field private f:Ljava/lang/Throwable;

.field private g:Z


# direct methods
.method public constructor <init>(Lio/grpc/internal/k1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lig/d;->a:Lio/grpc/internal/k1$a;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lig/d;->e:Lio/grpc/Status;

    return-object v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lig/d;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method public c(Lio/grpc/Status;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lig/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lig/d;->c:Z

    .line 3
    iget-object v0, p0, Lig/d;->a:Lio/grpc/internal/k1$a;

    invoke-interface {v0, p1}, Lio/grpc/internal/k1$a;->a(Lio/grpc/Status;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lig/d;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lig/d;->d:Z

    .line 3
    iget-object v0, p0, Lig/d;->a:Lio/grpc/internal/k1$a;

    invoke-interface {v0, p1}, Lio/grpc/internal/k1$a;->c(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lig/d;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lig/d;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lig/d;->b:Z

    .line 3
    iget-object v0, p0, Lig/d;->a:Lio/grpc/internal/k1$a;

    invoke-interface {v0}, Lio/grpc/internal/k1$a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lio/grpc/Status;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lig/d;->c(Lio/grpc/Status;)V

    .line 2
    iget-object v0, p0, Lig/d;->e:Lio/grpc/Status;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iput-object p1, p0, Lig/d;->e:Lio/grpc/Status;

    .line 4
    invoke-virtual {p1}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object p1

    iput-object p1, p0, Lig/d;->f:Ljava/lang/Throwable;

    const/4 p1, 0x1

    return p1
.end method

.method public g(Lio/grpc/Status;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lig/d;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lig/d;->g:Z

    .line 3
    invoke-virtual {p0, p1}, Lig/d;->f(Lio/grpc/Status;)Z

    .line 4
    iget-object p1, p0, Lig/d;->a:Lio/grpc/internal/k1$a;

    invoke-interface {p1}, Lio/grpc/internal/k1$a;->d()V

    return-void
.end method
