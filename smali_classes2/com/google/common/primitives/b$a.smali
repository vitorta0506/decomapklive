.class Lcom/google/common/primitives/b$a;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[D

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([DII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/primitives/b$a;->a:[D

    .line 3
    iput p2, p0, Lcom/google/common/primitives/b$a;->b:I

    .line 4
    iput p3, p0, Lcom/google/common/primitives/b$a;->c:I

    return-void
.end method


# virtual methods
.method public c(I)Ljava/lang/Double;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/b$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/o;->q(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/b$a;->a:[D

    iget v1, p0, Lcom/google/common/primitives/b$a;->b:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/b$a;->a:[D

    check-cast p1, Ljava/lang/Double;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget p1, p0, Lcom/google/common/primitives/b$a;->b:I

    iget v3, p0, Lcom/google/common/primitives/b$a;->c:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/common/primitives/b;->a([DDII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/b$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/o;->q(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/b$a;->a:[D

    iget v1, p0, Lcom/google/common/primitives/b$a;->b:I

    add-int v2, v1, p1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    aput-wide p1, v0, v1

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/b$a;

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Lcom/google/common/primitives/b$a;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/primitives/b$a;->size()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/primitives/b$a;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 5
    iget-object v4, p0, Lcom/google/common/primitives/b$a;->a:[D

    iget v5, p0, Lcom/google/common/primitives/b$a;->b:I

    add-int/2addr v5, v2

    aget-wide v5, v4, v5

    iget-object v4, p1, Lcom/google/common/primitives/b$a;->a:[D

    iget v7, p1, Lcom/google/common/primitives/b$a;->b:I

    add-int/2addr v7, v2

    aget-wide v7, v4, v7

    cmpl-double v4, v5, v7

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 6
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/util/Spliterator$OfDouble;
    .locals 4

    iget-object v0, p0, Lcom/google/common/primitives/b$a;->a:[D

    iget v1, p0, Lcom/google/common/primitives/b$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/b$a;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method g()[D
    .locals 3

    iget-object v0, p0, Lcom/google/common/primitives/b$a;->a:[D

    iget v1, p0, Lcom/google/common/primitives/b$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/b$a;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/b$a;->c(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/primitives/b$a;->b:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/b$a;->c:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/common/primitives/b$a;->a:[D

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/b;->d(D)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/b$a;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget p1, p0, Lcom/google/common/primitives/b$a;->b:I

    iget v3, p0, Lcom/google/common/primitives/b$a;->c:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/common/primitives/b;->a([DDII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/google/common/primitives/b$a;->b:I

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/b$a;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget p1, p0, Lcom/google/common/primitives/b$a;->b:I

    iget v3, p0, Lcom/google/common/primitives/b$a;->c:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/common/primitives/b;->b([DDII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/google/common/primitives/b$a;->b:I

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/b$a;->d(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/b$a;->c:I

    iget v1, p0, Lcom/google/common/primitives/b$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/primitives/b$a;->f()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/b$a;->size()I

    move-result v0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/common/base/o;->y(III)V

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/primitives/b$a;

    iget-object v1, p0, Lcom/google/common/primitives/b$a;->a:[D

    iget v2, p0, Lcom/google/common/primitives/b$a;->b:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/b$a;-><init>([DII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/b$a;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/b$a;->a:[D

    iget v2, p0, Lcom/google/common/primitives/b$a;->b:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Lcom/google/common/primitives/b$a;->b:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/b$a;->c:I

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/b$a;->a:[D

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
