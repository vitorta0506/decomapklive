.class final Lh3/m$g;
.super Lh3/m$h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh3/m$h<",
        "Lh3/m$g;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lh3/m$g;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z


# direct methods
.method public constructor <init>(ILv2/o0;ILh3/m$d;ILjava/lang/String;)V
    .locals 5
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh3/m$h;-><init>(ILv2/o0;I)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p5, p1}, Lh3/m;->K(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lh3/m$g;->f:Z

    .line 3
    iget-object p2, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget p2, p2, Lcom/google/android/exoplayer2/k1;->d:I

    iget p3, p4, Lh3/z;->u:I

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4
    :goto_0
    iput-boolean p3, p0, Lh3/m$g;->g:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 5
    :goto_1
    iput-boolean p2, p0, Lh3/m$g;->h:Z

    const p2, 0x7fffffff

    .line 6
    iget-object p3, p4, Lh3/z;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    .line 7
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    goto :goto_2

    .line 8
    :cond_2
    iget-object p3, p4, Lh3/z;->s:Lcom/google/common/collect/ImmutableList;

    :goto_2
    const/4 v1, 0x0

    .line 9
    :goto_3
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 10
    iget-object v2, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    .line 11
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p4, Lh3/z;->v:Z

    .line 12
    invoke-static {v2, v3, v4}, Lh3/m;->C(Lcom/google/android/exoplayer2/k1;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_3

    move p2, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 13
    :goto_4
    iput p2, p0, Lh3/m$g;->i:I

    .line 14
    iput v2, p0, Lh3/m$g;->j:I

    .line 15
    iget-object p2, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget p2, p2, Lcom/google/android/exoplayer2/k1;->e:I

    iget p3, p4, Lh3/z;->t:I

    .line 16
    invoke-static {p2, p3}, Lh3/m;->v(II)I

    move-result p2

    iput p2, p0, Lh3/m$g;->k:I

    .line 17
    iget-object p3, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget p3, p3, Lcom/google/android/exoplayer2/k1;->e:I

    and-int/lit16 p3, p3, 0x440

    if-eqz p3, :cond_5

    const/4 p3, 0x1

    goto :goto_5

    :cond_5
    const/4 p3, 0x0

    :goto_5
    iput-boolean p3, p0, Lh3/m$g;->m:Z

    .line 18
    invoke-static {p6}, Lh3/m;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_6

    :cond_6
    const/4 p3, 0x0

    .line 19
    :goto_6
    iget-object v1, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    .line 20
    invoke-static {v1, p6, p3}, Lh3/m;->C(Lcom/google/android/exoplayer2/k1;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lh3/m$g;->l:I

    if-gtz v2, :cond_9

    .line 21
    iget-object p6, p4, Lh3/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 22
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_7

    if-gtz p2, :cond_9

    :cond_7
    iget-boolean p2, p0, Lh3/m$g;->g:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lh3/m$g;->h:Z

    if-eqz p2, :cond_8

    if-lez p3, :cond_8

    goto :goto_7

    :cond_8
    const/4 p2, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 p2, 0x1

    .line 23
    :goto_8
    iget-boolean p3, p4, Lh3/m$d;->N:Z

    .line 24
    invoke-static {p5, p3}, Lh3/m;->K(IZ)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    const/4 p1, 0x1

    .line 25
    :cond_a
    iput p1, p0, Lh3/m$g;->e:I

    return-void
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh3/m$g;",
            ">;",
            "Ljava/util/List<",
            "Lh3/m$g;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/m$g;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/m$g;

    invoke-virtual {p0, p1}, Lh3/m$g;->d(Lh3/m$g;)I

    move-result p0

    return p0
.end method

.method public static e(ILv2/o0;Lh3/m$d;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lv2/o0;",
            "Lh3/m$d;",
            "[I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lh3/m$g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p1, Lv2/o0;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v9, Lh3/m$g;

    aget v7, p3, v1

    move-object v2, v9

    move v3, p0

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lh3/m$g;-><init>(ILv2/o0;ILh3/m$d;ILjava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lh3/m$g;->e:I

    return v0
.end method

.method public bridge synthetic b(Lh3/m$h;)Z
    .locals 0

    check-cast p1, Lh3/m$g;

    invoke-virtual {p0, p1}, Lh3/m$g;->f(Lh3/m$g;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh3/m$g;

    invoke-virtual {p0, p1}, Lh3/m$g;->d(Lh3/m$g;)I

    move-result p1

    return p1
.end method

.method public d(Lh3/m$g;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/e3;->k()Lcom/google/common/collect/e3;

    move-result-object v0

    iget-boolean v1, p0, Lh3/m$g;->f:Z

    iget-boolean v2, p1, Lh3/m$g;->f:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v0

    iget v1, p0, Lh3/m$g;->i:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lh3/m$g;->i:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v0

    iget v1, p0, Lh3/m$g;->j:I

    iget v2, p1, Lh3/m$g;->j:I

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/e3;->d(II)Lcom/google/common/collect/e3;

    move-result-object v0

    iget v1, p0, Lh3/m$g;->k:I

    iget v2, p1, Lh3/m$g;->k:I

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/e3;->d(II)Lcom/google/common/collect/e3;

    move-result-object v0

    iget-boolean v1, p0, Lh3/m$g;->g:Z

    iget-boolean v2, p1, Lh3/m$g;->g:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v0

    iget-boolean v1, p0, Lh3/m$g;->h:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lh3/m$g;->h:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    iget v3, p0, Lh3/m$g;->j:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v3

    .line 13
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v0

    iget v1, p0, Lh3/m$g;->l:I

    iget v2, p1, Lh3/m$g;->l:I

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/e3;->d(II)Lcom/google/common/collect/e3;

    move-result-object v0

    .line 15
    iget v1, p0, Lh3/m$g;->k:I

    if-nez v1, :cond_1

    .line 16
    iget-boolean v1, p0, Lh3/m$g;->m:Z

    iget-boolean p1, p1, Lh3/m$g;->m:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/e3;->i(ZZ)Lcom/google/common/collect/e3;

    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/e3;->j()I

    move-result p1

    return p1
.end method

.method public f(Lh3/m$g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
