.class public abstract Lio/grpc/internal/b;
.super Lio/grpc/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/r0<",
        "TT;>;>",
        "Lio/grpc/r0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/r0;-><init>()V

    const/high16 v0, 0x400000

    .line 2
    iput v0, p0, Lio/grpc/internal/b;->a:I

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/q0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/r0;->a()Lio/grpc/q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/util/Map;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/b;->p(Ljava/util/Map;)Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Lio/grpc/r0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/b;->r()Lio/grpc/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lio/grpc/r0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/b;->s()Lio/grpc/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/util/concurrent/Executor;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/b;->t(Ljava/util/concurrent/Executor;)Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/List;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/b;->u(Ljava/util/List;)Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h([Lio/grpc/h;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/b;->v([Lio/grpc/h;)Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o(Ljava/lang/String;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/b;->x(Ljava/lang/String;)Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/util/Map;)Lio/grpc/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/r0;->b(Ljava/util/Map;)Lio/grpc/r0;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/b;->w()Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method protected abstract q()Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/r0<",
            "*>;"
        }
    .end annotation
.end method

.method public r()Lio/grpc/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/r0;->c()Lio/grpc/r0;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/b;->w()Lio/grpc/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public s()Lio/grpc/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/r0;->d()Lio/grpc/r0;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/b;->w()Lio/grpc/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/util/concurrent/Executor;)Lio/grpc/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/r0;->e(Ljava/util/concurrent/Executor;)Lio/grpc/r0;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/b;->w()Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/util/List;)Lio/grpc/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/h;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/r0;->g(Ljava/util/List;)Lio/grpc/r0;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/b;->w()Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public varargs v([Lio/grpc/h;)Lio/grpc/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/h;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/r0;->h([Lio/grpc/h;)Lio/grpc/r0;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/b;->w()Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method

.method protected final w()Lio/grpc/internal/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lio/grpc/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/b;->q()Lio/grpc/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/r0;->o(Ljava/lang/String;)Lio/grpc/r0;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/b;->w()Lio/grpc/internal/b;

    move-result-object p1

    return-object p1
.end method
