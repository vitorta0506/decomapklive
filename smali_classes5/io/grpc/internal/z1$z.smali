.class final Lio/grpc/internal/z1$z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "z"
.end annotation


# instance fields
.field final a:Z

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/internal/z1$r;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/z1$b0;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/z1$b0;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Lio/grpc/internal/z1$b0;

.field final g:Z

.field final h:Z


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/internal/z1$r;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/grpc/internal/z1$b0;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/grpc/internal/z1$b0;",
            ">;",
            "Lio/grpc/internal/z1$b0;",
            "ZZZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    const-string v0, "drainedSubstreams"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    .line 4
    iput-object p4, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    .line 5
    iput-object p3, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    .line 6
    iput-boolean p5, p0, Lio/grpc/internal/z1$z;->g:Z

    .line 7
    iput-boolean p6, p0, Lio/grpc/internal/z1$z;->a:Z

    .line 8
    iput-boolean p7, p0, Lio/grpc/internal/z1$z;->h:Z

    .line 9
    iput p8, p0, Lio/grpc/internal/z1$z;->e:I

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p8, "passThrough should imply buffer is null"

    .line 10
    invoke-static {p1, p8}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    const-string p8, "passThrough should imply winningSubstream != null"

    .line 11
    invoke-static {p1, p8}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    if-eqz p6, :cond_6

    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, p7, :cond_4

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p4, Lio/grpc/internal/z1$b0;->b:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p1, 0x1

    :goto_5
    const-string p2, "passThrough should imply winningSubstream is drained"

    .line 14
    invoke-static {p1, p2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    if-eqz p5, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    const/4 p3, 0x1

    :cond_8
    const-string p1, "cancelled should imply committed"

    .line 15
    invoke-static {p3, p1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;
    .locals 11

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/z1$z;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "hedging frozen"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "already committed"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_1
    move-object v5, p1

    .line 8
    iget p1, p0, Lio/grpc/internal/z1$z;->e:I

    add-int/lit8 v10, p1, 0x1

    .line 9
    new-instance p1, Lio/grpc/internal/z1$z;

    iget-object v3, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-boolean v7, p0, Lio/grpc/internal/z1$z;->g:Z

    iget-boolean v8, p0, Lio/grpc/internal/z1$z;->a:Z

    iget-boolean v9, p0, Lio/grpc/internal/z1$z;->h:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object p1
.end method

.method b()Lio/grpc/internal/z1$z;
    .locals 10

    new-instance v9, Lio/grpc/internal/z1$z;

    iget-object v1, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    iget-object v2, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    iget-object v3, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    iget-object v4, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-boolean v6, p0, Lio/grpc/internal/z1$z;->a:Z

    iget-boolean v7, p0, Lio/grpc/internal/z1$z;->h:Z

    iget v8, p0, Lio/grpc/internal/z1$z;->e:I

    const/4 v5, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object v9
.end method

.method c(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;
    .locals 12

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Already committed"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    .line 3
    iget-object v3, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object v4, v0

    move-object v5, v2

    const/4 v9, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    const/4 v9, 0x0

    .line 6
    :goto_1
    new-instance v0, Lio/grpc/internal/z1$z;

    iget-object v6, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    iget-boolean v8, p0, Lio/grpc/internal/z1$z;->g:Z

    iget-boolean v10, p0, Lio/grpc/internal/z1$z;->h:Z

    iget v11, p0, Lio/grpc/internal/z1$z;->e:I

    move-object v3, v0

    move-object v7, p1

    invoke-direct/range {v3 .. v11}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object v0
.end method

.method d()Lio/grpc/internal/z1$z;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/z1$z;->h:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/internal/z1$z;

    iget-object v2, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    iget-object v3, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    iget-object v4, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    iget-object v5, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-boolean v6, p0, Lio/grpc/internal/z1$z;->g:Z

    iget-boolean v7, p0, Lio/grpc/internal/z1$z;->a:Z

    const/4 v8, 0x1

    iget v9, p0, Lio/grpc/internal/z1$z;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object v0
.end method

.method e(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 4
    new-instance p1, Lio/grpc/internal/z1$z;

    iget-object v3, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-boolean v7, p0, Lio/grpc/internal/z1$z;->g:Z

    iget-boolean v8, p0, Lio/grpc/internal/z1$z;->a:Z

    iget-boolean v9, p0, Lio/grpc/internal/z1$z;->h:Z

    iget v10, p0, Lio/grpc/internal/z1$z;->e:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object p1
.end method

.method f(Lio/grpc/internal/z1$b0;Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 5
    new-instance p1, Lio/grpc/internal/z1$z;

    iget-object v3, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-boolean v7, p0, Lio/grpc/internal/z1$z;->g:Z

    iget-boolean v8, p0, Lio/grpc/internal/z1$z;->a:Z

    iget-boolean v9, p0, Lio/grpc/internal/z1$z;->h:Z

    iget v10, p0, Lio/grpc/internal/z1$z;->e:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object p1
.end method

.method g(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lio/grpc/internal/z1$b0;->b:Z

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 6
    new-instance p1, Lio/grpc/internal/z1$z;

    iget-object v3, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    iget-object v5, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-boolean v7, p0, Lio/grpc/internal/z1$z;->g:Z

    iget-boolean v8, p0, Lio/grpc/internal/z1$z;->a:Z

    iget-boolean v9, p0, Lio/grpc/internal/z1$z;->h:Z

    iget v10, p0, Lio/grpc/internal/z1$z;->e:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method h(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;
    .locals 11

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/z1$z;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already passThrough"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p1, Lio/grpc/internal/z1$b0;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 9
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    if-eqz v8, :cond_4

    if-ne v0, p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const-string p1, "Another RPC attempt has already committed"

    .line 11
    invoke-static {v1, p1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const/4 p1, 0x0

    move-object v3, p1

    .line 12
    :cond_4
    new-instance p1, Lio/grpc/internal/z1$z;

    iget-object v5, p0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-boolean v7, p0, Lio/grpc/internal/z1$z;->g:Z

    iget-boolean v9, p0, Lio/grpc/internal/z1$z;->h:Z

    iget v10, p0, Lio/grpc/internal/z1$z;->e:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    return-object p1
.end method
