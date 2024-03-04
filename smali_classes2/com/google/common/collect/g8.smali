.class final Lcom/google/common/collect/g8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g8$b;,
        Lcom/google/common/collect/g8$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;Lcom/google/common/base/h;Ljava/lang/Comparable;Lcom/google/common/collect/g8$c;Lcom/google/common/collect/g8$b;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/google/common/base/h<",
            "-TE;TK;>;TK;",
            "Lcom/google/common/collect/g8$c;",
            "Lcom/google/common/collect/g8$b;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/g8;->b(Ljava/util/List;Lcom/google/common/base/h;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/g8$c;Lcom/google/common/collect/g8$b;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/List;Lcom/google/common/base/h;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/g8$c;Lcom/google/common/collect/g8$b;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/google/common/base/h<",
            "-TE;TK;>;TK;",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Lcom/google/common/collect/g8$c;",
            "Lcom/google/common/collect/g8$b;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/z5;->m(Ljava/util/List;Lcom/google/common/base/h;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0, p2, p3, p4, p5}, Lcom/google/common/collect/g8;->c(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/g8$c;Lcom/google/common/collect/g8$b;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/g8$c;Lcom/google/common/collect/g8$b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;TE;",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lcom/google/common/collect/g8$c;",
            "Lcom/google/common/collect/g8$b;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p4}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/google/common/collect/z5;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt v0, v1, :cond_3

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 8
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    sub-int/2addr v2, v0

    .line 10
    invoke-virtual {p3, p2, p1, p0, v2}, Lcom/google/common/collect/g8$c;->b(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 11
    :cond_3
    invoke-virtual {p4, v0}, Lcom/google/common/collect/g8$b;->b(I)I

    move-result p0

    return p0
.end method
