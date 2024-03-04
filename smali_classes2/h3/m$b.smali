.class final Lh3/m$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh3/m$h<",
        "Lh3/m$b;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lh3/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lh3/m$d;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:I

.field private final o:I

.field private final p:Z

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:Z

.field private final v:Z


# direct methods
.method public constructor <init>(ILv2/o0;ILh3/m$d;IZLcom/google/common/base/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lv2/o0;",
            "I",
            "Lh3/m$d;",
            "IZ",
            "Lcom/google/common/base/q<",
            "Lcom/google/android/exoplayer2/k1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh3/m$h;-><init>(ILv2/o0;I)V

    .line 2
    iput-object p4, p0, Lh3/m$b;->h:Lh3/m$d;

    .line 3
    iget-object p1, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    invoke-static {p1}, Lh3/m;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh3/m$b;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    invoke-static {p5, p1}, Lh3/m;->K(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lh3/m$b;->i:Z

    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object p3, p4, Lh3/z;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    const v0, 0x7fffffff

    if-ge p2, p3, :cond_1

    .line 6
    iget-object p3, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget-object v1, p4, Lh3/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {p3, v1, p1}, Lh3/m;->C(Lcom/google/android/exoplayer2/k1;Ljava/lang/String;Z)I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const p2, 0x7fffffff

    const/4 p3, 0x0

    .line 9
    :goto_1
    iput p2, p0, Lh3/m$b;->k:I

    .line 10
    iput p3, p0, Lh3/m$b;->j:I

    .line 11
    iget-object p2, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget p2, p2, Lcom/google/android/exoplayer2/k1;->e:I

    iget p3, p4, Lh3/z;->o:I

    .line 12
    invoke-static {p2, p3}, Lh3/m;->v(II)I

    move-result p2

    iput p2, p0, Lh3/m$b;->l:I

    .line 13
    iget-object p2, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget p3, p2, Lcom/google/android/exoplayer2/k1;->e:I

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p3, 0x1

    :goto_3
    iput-boolean p3, p0, Lh3/m$b;->m:Z

    .line 14
    iget p3, p2, Lcom/google/android/exoplayer2/k1;->d:I

    and-int/2addr p3, v1

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    :goto_4
    iput-boolean p3, p0, Lh3/m$b;->p:Z

    .line 15
    iget p3, p2, Lcom/google/android/exoplayer2/k1;->y:I

    iput p3, p0, Lh3/m$b;->q:I

    .line 16
    iget v2, p2, Lcom/google/android/exoplayer2/k1;->z:I

    iput v2, p0, Lh3/m$b;->r:I

    .line 17
    iget v2, p2, Lcom/google/android/exoplayer2/k1;->h:I

    iput v2, p0, Lh3/m$b;->s:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 18
    iget v4, p4, Lh3/z;->q:I

    if-gt v2, v4, :cond_7

    :cond_5
    if-eq p3, v3, :cond_6

    iget v2, p4, Lh3/z;->p:I

    if-gt p3, v2, :cond_7

    .line 19
    :cond_6
    invoke-interface {p7, p2}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    :goto_5
    iput-boolean p2, p0, Lh3/m$b;->f:Z

    .line 20
    invoke-static {}, Lcom/google/android/exoplayer2/util/l0;->c0()[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 21
    :goto_6
    array-length p7, p2

    if-ge p3, p7, :cond_9

    .line 22
    iget-object p7, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    aget-object v2, p2, p3

    .line 23
    invoke-static {p7, v2, p1}, Lh3/m;->C(Lcom/google/android/exoplayer2/k1;Ljava/lang/String;Z)I

    move-result p7

    if-lez p7, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_9
    const p3, 0x7fffffff

    const/4 p7, 0x0

    .line 24
    :goto_7
    iput p3, p0, Lh3/m$b;->n:I

    .line 25
    iput p7, p0, Lh3/m$b;->o:I

    const/4 p2, 0x0

    .line 26
    :goto_8
    iget-object p3, p4, Lh3/z;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    .line 27
    iget-object p3, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget-object p3, p3, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    if-eqz p3, :cond_a

    iget-object p7, p4, Lh3/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 28
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    move v0, p2

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 29
    :cond_b
    :goto_9
    iput v0, p0, Lh3/m$b;->t:I

    .line 30
    invoke-static {p5}, Lcom/google/android/exoplayer2/v2;->e(I)I

    move-result p2

    const/16 p3, 0x80

    if-ne p2, p3, :cond_c

    const/4 p2, 0x1

    goto :goto_a

    :cond_c
    const/4 p2, 0x0

    :goto_a
    iput-boolean p2, p0, Lh3/m$b;->u:Z

    .line 31
    invoke-static {p5}, Lcom/google/android/exoplayer2/v2;->g(I)I

    move-result p2

    const/16 p3, 0x40

    if-ne p2, p3, :cond_d

    const/4 p1, 0x1

    :cond_d
    iput-boolean p1, p0, Lh3/m$b;->v:Z

    .line 32
    invoke-direct {p0, p5, p6}, Lh3/m$b;->f(IZ)I

    move-result p1

    iput p1, p0, Lh3/m$b;->e:I

    return-void
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh3/m$b;",
            ">;",
            "Ljava/util/List<",
            "Lh3/m$b;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/m$b;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/m$b;

    invoke-virtual {p0, p1}, Lh3/m$b;->d(Lh3/m$b;)I

    move-result p0

    return p0
.end method

.method public static e(ILv2/o0;Lh3/m$d;[IZLcom/google/common/base/q;)Lcom/google/common/collect/ImmutableList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lv2/o0;",
            "Lh3/m$d;",
            "[IZ",
            "Lcom/google/common/base/q<",
            "Lcom/google/android/exoplayer2/k1;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lh3/m$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    const/4 v1, 0x0

    move-object v10, p1

    .line 2
    :goto_0
    iget v2, v10, Lv2/o0;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v11, Lh3/m$b;

    aget v7, p3, v1

    move-object v2, v11

    move v3, p0

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lh3/m$b;-><init>(ILv2/o0;ILh3/m$d;IZLcom/google/common/base/q;)V

    invoke-virtual {v0, v11}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private f(IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/m$b;->h:Lh3/m$d;

    iget-boolean v0, v0, Lh3/m$d;->N:Z

    invoke-static {p1, v0}, Lh3/m;->K(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lh3/m$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lh3/m$b;->h:Lh3/m$d;

    iget-boolean v0, v0, Lh3/m$d;->H:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {p1, v1}, Lh3/m;->K(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lh3/m$b;->f:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget p1, p1, Lcom/google/android/exoplayer2/k1;->h:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lh3/m$b;->h:Lh3/m$d;

    iget-boolean v0, p1, Lh3/z;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lh3/z;->w:Z

    if-nez v0, :cond_3

    iget-boolean p1, p1, Lh3/m$d;->P:Z

    if-nez p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lh3/m$b;->e:I

    return v0
.end method

.method public bridge synthetic b(Lh3/m$h;)Z
    .locals 0

    check-cast p1, Lh3/m$b;

    invoke-virtual {p0, p1}, Lh3/m$b;->g(Lh3/m$b;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh3/m$b;

    invoke-virtual {p0, p1}, Lh3/m$b;->d(Lh3/m$b;)I

    move-result p1

    return p1
.end method

.method public d(Lh3/m$b;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lh3/m$b;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lh3/m$b;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lh3/m;->x()Lcom/google/common/collect/y6;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lh3/m;->x()Lcom/google/common/collect/y6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {}, Lcom/google/common/collect/e3;->k()Lcom/google/common/collect/e3;

    move-result-object v1

    iget-boolean v2, p0, Lh3/m$b;->i:Z

    iget-boolean v3, p1, Lh3/m$b;->i:Z

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->k:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lh3/m$b;->k:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->j:I

    iget v3, p1, Lh3/m$b;->j:I

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->d(II)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->l:I

    iget v3, p1, Lh3/m$b;->l:I

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->d(II)Lcom/google/common/collect/e3;

    move-result-object v1

    iget-boolean v2, p0, Lh3/m$b;->p:Z

    iget-boolean v3, p1, Lh3/m$b;->p:Z

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v1

    iget-boolean v2, p0, Lh3/m$b;->m:Z

    iget-boolean v3, p1, Lh3/m$b;->m:Z

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->n:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lh3/m$b;->n:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 16
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v4

    .line 17
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->o:I

    iget v3, p1, Lh3/m$b;->o:I

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->d(II)Lcom/google/common/collect/e3;

    move-result-object v1

    iget-boolean v2, p0, Lh3/m$b;->f:Z

    iget-boolean v3, p1, Lh3/m$b;->f:Z

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->t:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lh3/m$b;->t:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v4

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->s:I

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lh3/m$b;->s:I

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 26
    iget-object v4, p0, Lh3/m$b;->h:Lh3/m$d;

    iget-boolean v4, v4, Lh3/z;->w:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lh3/m;->x()Lcom/google/common/collect/y6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lh3/m;->y()Lcom/google/common/collect/y6;

    move-result-object v4

    .line 27
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v1

    iget-boolean v2, p0, Lh3/m$b;->u:Z

    iget-boolean v3, p1, Lh3/m$b;->u:Z

    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v1

    iget-boolean v2, p0, Lh3/m$b;->v:Z

    iget-boolean v3, p1, Lh3/m$b;->v:Z

    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->q:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lh3/m$b;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->r:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lh3/m$b;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v1

    iget v2, p0, Lh3/m$b;->s:I

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lh3/m$b;->s:I

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 34
    iget-object v4, p0, Lh3/m$b;->g:Ljava/lang/String;

    iget-object p1, p1, Lh3/m$b;->g:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lh3/m;->y()Lcom/google/common/collect/y6;

    move-result-object v0

    .line 35
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/e3;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/common/collect/e3;->j()I

    move-result p1

    return p1
.end method

.method public g(Lh3/m$b;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/m$b;->h:Lh3/m$d;

    iget-boolean v1, v0, Lh3/m$d;->K:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget v1, v1, Lcom/google/android/exoplayer2/k1;->y:I

    if-eq v1, v2, :cond_3

    iget-object v3, p1, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget v3, v3, Lcom/google/android/exoplayer2/k1;->y:I

    if-ne v1, v3, :cond_3

    :cond_0
    iget-boolean v0, v0, Lh3/m$d;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lh3/m$b;->h:Lh3/m$d;

    iget-boolean v1, v0, Lh3/m$d;->J:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget v1, v1, Lcom/google/android/exoplayer2/k1;->z:I

    if-eq v1, v2, :cond_3

    iget-object v2, p1, Lh3/m$h;->d:Lcom/google/android/exoplayer2/k1;

    iget v2, v2, Lcom/google/android/exoplayer2/k1;->z:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v0, v0, Lh3/m$d;->L:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lh3/m$b;->u:Z

    iget-boolean v1, p1, Lh3/m$b;->u:Z

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lh3/m$b;->v:Z

    iget-boolean p1, p1, Lh3/m$b;->v:Z

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
