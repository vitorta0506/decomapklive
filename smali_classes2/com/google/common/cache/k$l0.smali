.class final Lcom/google/common/cache/k$l0;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/cache/q<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/cache/k$l0$a;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$l0$a;-><init>(Lcom/google/common/cache/k$l0;)V

    iput-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/cache/q;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/q;->h()Lcom/google/common/cache/q;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-interface {v0}, Lcom/google/common/cache/q;->h()Lcom/google/common/cache/q;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-static {p1, v0}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-interface {v0}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/q;)V

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1, v1}, Lcom/google/common/cache/q;->p(Lcom/google/common/cache/q;)V

    .line 6
    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-interface {v0, v0}, Lcom/google/common/cache/q;->q(Lcom/google/common/cache/q;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/google/common/cache/q;

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object p1

    sget-object v0, Lcom/google/common/cache/k$r;->a:Lcom/google/common/cache/k$r;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Lcom/google/common/cache/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-interface {v0}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public f()Lcom/google/common/cache/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-interface {v0}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k$l0;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-interface {v0}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/k$l0$b;

    invoke-virtual {p0}, Lcom/google/common/cache/k$l0;->d()Lcom/google/common/cache/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/k$l0$b;-><init>(Lcom/google/common/cache/k$l0;Lcom/google/common/cache/q;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/common/cache/q;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$l0;->c(Lcom/google/common/cache/q;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k$l0;->d()Lcom/google/common/cache/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k$l0;->f()Lcom/google/common/cache/q;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/google/common/cache/q;

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/q;->h()Lcom/google/common/cache/q;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    .line 5
    invoke-static {p1}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/q;)V

    .line 6
    sget-object p1, Lcom/google/common/cache/k$r;->a:Lcom/google/common/cache/k$r;

    if-eq v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    invoke-interface {v0}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/k$l0;->a:Lcom/google/common/cache/q;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
