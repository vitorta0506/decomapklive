.class abstract Lcom/google/common/cache/k$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Lcom/google/common/cache/k$s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/cache/k$m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k<",
            "TK;TV;>.m0;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/cache/k$m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k<",
            "TK;TV;>.m0;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/google/common/cache/k;


# direct methods
.method constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/k$j;->h:Lcom/google/common/cache/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/k$j;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/common/cache/k$j;->b:I

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/cache/k$j;->f:Lcom/google/common/cache/k$m0;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/common/cache/k$j;->a:I

    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/common/cache/k$j;->h:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/k$j;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/cache/k$j;->c:Lcom/google/common/cache/k$s;

    .line 6
    iget v0, v0, Lcom/google/common/cache/k$s;->b:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/cache/k$j;->c:Lcom/google/common/cache/k$s;

    iget-object v0, v0, Lcom/google/common/cache/k$s;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/k$j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/k$j;->b:I

    .line 9
    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method b(Lcom/google/common/cache/q;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$j;->h:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->p:Lcom/google/common/base/z;

    invoke-virtual {v0}, Lcom/google/common/base/z;->a()J

    move-result-wide v0

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/q;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/google/common/cache/k$j;->h:Lcom/google/common/cache/k;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/k;->n(Lcom/google/common/cache/q;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/google/common/cache/k$m0;

    iget-object v1, p0, Lcom/google/common/cache/k$j;->h:Lcom/google/common/cache/k;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/cache/k$m0;-><init>(Lcom/google/common/cache/k;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/cache/k$j;->f:Lcom/google/common/cache/k$m0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k$j;->c:Lcom/google/common/cache/k$s;

    invoke-virtual {v0}, Lcom/google/common/cache/k$s;->G()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/cache/k$j;->c:Lcom/google/common/cache/k$s;

    invoke-virtual {v0}, Lcom/google/common/cache/k$s;->G()V

    .line 6
    throw p1
.end method

.method c()Lcom/google/common/cache/k$m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/k<",
            "TK;TV;>.m0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$j;->f:Lcom/google/common/cache/k$m0;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/common/cache/k$j;->g:Lcom/google/common/cache/k$m0;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->a()V

    .line 4
    iget-object v0, p0, Lcom/google/common/cache/k$j;->g:Lcom/google/common/cache/k$m0;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$j;->e:Lcom/google/common/cache/q;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/q;->c()Lcom/google/common/cache/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k$j;->e:Lcom/google/common/cache/q;

    iget-object v0, p0, Lcom/google/common/cache/k$j;->e:Lcom/google/common/cache/q;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k$j;->b(Lcom/google/common/cache/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/k$j;->e:Lcom/google/common/cache/q;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/common/cache/k$j;->b:I

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/k$j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/k$j;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/q;

    iput-object v0, p0, Lcom/google/common/cache/k$j;->e:Lcom/google/common/cache/q;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k$j;->b(Lcom/google/common/cache/q;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$j;->f:Lcom/google/common/cache/k$m0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$j;->g:Lcom/google/common/cache/k$m0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/k$j;->h:Lcom/google/common/cache/k;

    iget-object v1, p0, Lcom/google/common/cache/k$j;->g:Lcom/google/common/cache/k$m0;

    invoke-virtual {v1}, Lcom/google/common/cache/k$m0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/cache/k$j;->g:Lcom/google/common/cache/k$m0;

    return-void
.end method
