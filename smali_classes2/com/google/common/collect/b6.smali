.class public final Lcom/google/common/collect/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Lcom/google/common/collect/c6$p;

.field e:Lcom/google/common/collect/c6$p;

.field f:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/common/collect/b6;->b:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/b6;->c:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/common/collect/b6;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/collect/b6;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/o;->B(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/collect/b6;->c:I

    return-object p0
.end method

.method b()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/b6;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method c()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/b6;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method d()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b6;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/b6;->e()Lcom/google/common/collect/c6$p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/c6$p;->b()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method e()Lcom/google/common/collect/c6$p;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/b6;->d:Lcom/google/common/collect/c6$p;

    sget-object v1, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c6$p;

    return-object v0
.end method

.method f()Lcom/google/common/collect/c6$p;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/b6;->e:Lcom/google/common/collect/c6$p;

    sget-object v1, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c6$p;

    return-object v0
.end method

.method public g(I)Lcom/google/common/collect/b6;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/collect/b6;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/o;->B(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/collect/b6;->b:I

    return-object p0
.end method

.method h(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/b6;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/b6;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b6;->f:Lcom/google/common/base/Equivalence;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/collect/b6;->f:Lcom/google/common/base/Equivalence;

    .line 3
    iput-boolean v1, p0, Lcom/google/common/collect/b6;->a:Z

    return-object p0
.end method

.method public i()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/b6;->a:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/b6;->c()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/b6;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/c6;->b(Lcom/google/common/collect/b6;)Lcom/google/common/collect/c6;

    move-result-object v0

    return-object v0
.end method

.method j(Lcom/google/common/collect/c6$p;)Lcom/google/common/collect/b6;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b6;->d:Lcom/google/common/collect/c6$p;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c6$p;

    iput-object v0, p0, Lcom/google/common/collect/b6;->d:Lcom/google/common/collect/c6$p;

    .line 3
    sget-object v0, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    if-eq p1, v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/google/common/collect/b6;->a:Z

    :cond_1
    return-object p0
.end method

.method k(Lcom/google/common/collect/c6$p;)Lcom/google/common/collect/b6;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b6;->e:Lcom/google/common/collect/c6$p;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Value strength was already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c6$p;

    iput-object v0, p0, Lcom/google/common/collect/b6;->e:Lcom/google/common/collect/c6$p;

    .line 3
    sget-object v0, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    if-eq p1, v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/google/common/collect/b6;->a:Z

    :cond_1
    return-object p0
.end method

.method public l()Lcom/google/common/collect/b6;
    .locals 1

    sget-object v0, Lcom/google/common/collect/c6$p;->b:Lcom/google/common/collect/c6$p;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/b6;->j(Lcom/google/common/collect/c6$p;)Lcom/google/common/collect/b6;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/common/collect/b6;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 3
    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    .line 4
    :cond_0
    iget v1, p0, Lcom/google/common/collect/b6;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/b6;->d:Lcom/google/common/collect/c6$p;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/b6;->e:Lcom/google/common/collect/c6$p;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/b6;->f:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_4

    const-string v1, "keyEquivalence"

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/common/base/j$b;->k(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
