.class final Lcom/google/common/collect/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/BoundType;

.field private final e:Z

.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/common/collect/BoundType;


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    .line 3
    iput-boolean p2, p0, Lcom/google/common/collect/b4;->b:Z

    .line 4
    iput-boolean p5, p0, Lcom/google/common/collect/b4;->e:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/collect/b4;->c:Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/b4;->d:Lcom/google/common/collect/BoundType;

    .line 7
    iput-object p6, p0, Lcom/google/common/collect/b4;->f:Ljava/lang/Object;

    .line 8
    invoke-static {p7}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/b4;->g:Lcom/google/common/collect/BoundType;

    if-eqz p2, :cond_0

    .line 9
    invoke-static {p3}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_0
    if-eqz p5, :cond_1

    .line 11
    invoke-static {p6}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p6}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_1
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 13
    invoke-static {p3}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p6}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 14
    invoke-interface {p1, p2, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-gtz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    .line 15
    invoke-static {v0, v1, p3, p6}, Lcom/google/common/base/o;->n(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_5

    .line 16
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p4, p1, :cond_4

    if-eq p7, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/google/common/base/o;->d(Z)V

    :cond_5
    return-void
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/common/collect/b4;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/b4<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/b4;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/b4;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static d(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/b4;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/b4<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/b4;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/b4;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static n(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/b4;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/b4<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/b4;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/b4;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method


# virtual methods
.method b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b4;->m(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b4;->l(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e()Lcom/google/common/collect/BoundType;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b4;->d:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/b4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/b4;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/b4;->b:Z

    iget-boolean v2, p1, Lcom/google/common/collect/b4;->b:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/b4;->e:Z

    iget-boolean v2, p1, Lcom/google/common/collect/b4;->e:Z

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b4;->c:Ljava/lang/Object;

    return-object v0
.end method

.method g()Lcom/google/common/collect/BoundType;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b4;->g:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b4;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/b4;->b:Z

    return v0
.end method

.method j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/b4;->e:Z

    return v0
.end method

.method k(Lcom/google/common/collect/b4;)Lcom/google/common/collect/b4;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b4<",
            "TT;>;)",
            "Lcom/google/common/collect/b4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/google/common/collect/b4;->b:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->i()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-boolean v0, p1, Lcom/google/common/collect/b4;->b:Z

    .line 8
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v2

    :cond_2
    :goto_0
    move v5, v0

    .line 15
    iget-boolean v0, p0, Lcom/google/common/collect/b4;->e:Z

    .line 16
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v4

    .line 18
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->j()Z

    move-result v6

    if-nez v6, :cond_3

    .line 19
    iget-boolean v0, p1, Lcom/google/common/collect/b4;->e:Z

    .line 20
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v3

    .line 21
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v4

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->j()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 23
    iget-object v6, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_4

    if-nez v6, :cond_5

    .line 24
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_5

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v3

    .line 26
    invoke-virtual {p1}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v4

    :cond_5
    :goto_1
    move v8, v0

    move-object v9, v3

    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    .line 27
    iget-object p1, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-interface {p1, v1, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_6

    if-nez p1, :cond_7

    .line 28
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v2, p1, :cond_7

    if-ne v4, p1, :cond_7

    .line 29
    :cond_6
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 30
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    move-object v7, p1

    move-object v10, v0

    move-object v6, v9

    goto :goto_2

    :cond_7
    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    .line 31
    :goto_2
    new-instance p1, Lcom/google/common/collect/b4;

    iget-object v4, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/common/collect/b4;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object p1
.end method

.method l(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->g()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method m(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/w6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->e()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b4;->a:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/b4;->d:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    .line 3
    :goto_0
    iget-boolean v3, p0, Lcom/google/common/collect/b4;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/b4;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v3, "-\u221e"

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-boolean v4, p0, Lcom/google/common/collect/b4;->e:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/b4;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v4, "\u221e"

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/google/common/collect/b4;->g:Lcom/google/common/collect/BoundType;

    if-ne v5, v2, :cond_3

    const/16 v2, 0x5d

    goto :goto_3

    :cond_3
    const/16 v2, 0x29

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
