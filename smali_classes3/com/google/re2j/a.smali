.class Lcom/google/re2j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/google/re2j/p;->a:[I

    iput-object v0, p0, Lcom/google/re2j/a;->a:[I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/re2j/a;->b:I

    return-void
.end method

.method constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/re2j/a;->a:[I

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/google/re2j/a;->b:I

    return-void
.end method

.method static l([II)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    if-lez v1, :cond_0

    const/16 v2, 0x20

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    aget v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    const-string v4, "0x"

    if-ne v2, v3, :cond_1

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-0x"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static n([IIII)I
    .locals 1

    .line 1
    aget v0, p0, p1

    sub-int/2addr v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    aget p0, p0, p1

    sub-int v0, p3, p0

    :goto_0
    return v0
.end method

.method private o(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/re2j/a;->a:[I

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 2
    iget v1, p0, Lcom/google/re2j/a;->b:I

    mul-int/lit8 v2, v1, 0x2

    if-ge p1, v2, :cond_0

    mul-int/lit8 p1, v1, 0x2

    .line 3
    :cond_0
    new-array p1, p1, [I

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p1, p0, Lcom/google/re2j/a;->a:[I

    :cond_1
    return-void
.end method

.method private static q([III)V
    .locals 8

    add-int v0, p1, p2

    .line 1
    div-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x2

    .line 2
    aget v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    move v2, p1

    move v3, p2

    :cond_0
    :goto_0
    if-gt v2, v3, :cond_4

    :goto_1
    if-ge v2, p2, :cond_1

    .line 3
    invoke-static {p0, v2, v1, v0}, Lcom/google/re2j/a;->n([IIII)I

    move-result v4

    if-gez v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    :goto_2
    if-le v3, p1, :cond_2

    .line 4
    invoke-static {p0, v3, v1, v0}, Lcom/google/re2j/a;->n([IIII)I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    :cond_2
    if-gt v2, v3, :cond_0

    if-eq v2, v3, :cond_3

    .line 5
    aget v4, p0, v2

    .line 6
    aget v5, p0, v3

    aput v5, p0, v2

    .line 7
    aput v4, p0, v3

    add-int/lit8 v4, v2, 0x1

    .line 8
    aget v5, p0, v4

    add-int/lit8 v6, v3, 0x1

    .line 9
    aget v7, p0, v6

    aput v7, p0, v4

    .line 10
    aput v5, p0, v6

    :cond_3
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    :cond_4
    if-ge p1, v3, :cond_5

    .line 11
    invoke-static {p0, p1, v3}, Lcom/google/re2j/a;->q([III)V

    :cond_5
    if-ge v2, p2, :cond_6

    .line 12
    invoke-static {p0, v2, p2}, Lcom/google/re2j/a;->q([III)V

    :cond_6
    return-void
.end method


# virtual methods
.method a([I)Lcom/google/re2j/a;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method b([II)Lcom/google/re2j/a;
    .locals 0

    if-gez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/re2j/a;->g([I)Lcom/google/re2j/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/re2j/a;->a([I)Lcom/google/re2j/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method c([I)Lcom/google/re2j/a;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/a;->d(II)Lcom/google/re2j/a;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method d(II)Lcom/google/re2j/a;
    .locals 3

    const v0, 0x1044f

    const/16 v1, 0x41

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    move-result-object p1

    return-object p1

    :cond_0
    if-lt p2, v1, :cond_6

    if-le p1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-ge p1, v1, :cond_2

    const/16 v2, 0x40

    .line 2
    invoke-virtual {p0, p1, v2}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    const/16 p1, 0x41

    :cond_2
    if-le p2, v0, :cond_3

    const v1, 0x10450

    .line 3
    invoke-virtual {p0, v1, p2}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    const p2, 0x1044f

    :cond_3
    :goto_0
    if-gt p1, p2, :cond_5

    .line 4
    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    .line 5
    invoke-static {p1}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    :goto_1
    if-eq v0, p1, :cond_4

    .line 6
    invoke-virtual {p0, v0, v0}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    .line 7
    invoke-static {v0}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-object p0

    .line 8
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    move-result-object p1

    return-object p1
.end method

.method e(Lcom/google/re2j/b;Z)Lcom/google/re2j/a;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/re2j/b;->b:[I

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/google/re2j/a;

    invoke-direct {p2}, Lcom/google/re2j/a;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/re2j/a;->c([I)Lcom/google/re2j/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/re2j/a;->m()Lcom/google/re2j/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/re2j/a;->r()[I

    move-result-object v0

    .line 3
    :cond_0
    iget p1, p1, Lcom/google/re2j/b;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/google/re2j/a;->b([II)Lcom/google/re2j/a;

    move-result-object p1

    return-object p1
.end method

.method f(II)Lcom/google/re2j/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/a;->d(II)Lcom/google/re2j/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method g([I)Lcom/google/re2j/a;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 2
    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    .line 3
    aget v3, p1, v3

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    :cond_0
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const p1, 0x10ffff

    if-gt v1, p1, :cond_2

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    :cond_2
    return-object p0
.end method

.method h([[I)Lcom/google/re2j/a;
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p1, v2

    .line 2
    aget v5, v4, v1

    const/4 v6, 0x1

    aget v7, v4, v6

    const/4 v8, 0x2

    aget v4, v4, v8

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_0

    .line 3
    invoke-virtual {p0, v3, v5}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move v3, v7

    goto :goto_2

    :cond_1
    :goto_1
    if-gt v5, v7, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-gt v3, v6, :cond_2

    .line 4
    invoke-virtual {p0, v3, v6}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    :cond_2
    add-int/lit8 v3, v5, 0x1

    add-int/2addr v5, v4

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const p1, 0x10ffff

    if-gt v3, p1, :cond_5

    .line 5
    invoke-virtual {p0, v3, p1}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    :cond_5
    return-object p0
.end method

.method i(II)Lcom/google/re2j/a;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/re2j/a;->b:I

    const/4 v1, 0x2

    if-lez v0, :cond_3

    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    .line 2
    iget v2, p0, Lcom/google/re2j/a;->b:I

    if-lt v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/google/re2j/a;->a:[I

    sub-int v4, v2, v0

    aget v4, v3, v4

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    .line 4
    aget v5, v3, v5

    add-int/lit8 v6, v5, 0x1

    if-gt p1, v6, :cond_2

    add-int/lit8 v6, p2, 0x1

    if-gt v4, v6, :cond_2

    if-ge p1, v4, :cond_0

    sub-int v1, v2, v0

    .line 5
    aput p1, v3, v1

    :cond_0
    if-le p2, v5, :cond_1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 6
    aput p2, v3, v2

    :cond_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 7
    :cond_3
    iget v0, p0, Lcom/google/re2j/a;->b:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/re2j/a;->o(I)V

    .line 8
    iget-object v0, p0, Lcom/google/re2j/a;->a:[I

    iget v1, p0, Lcom/google/re2j/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/re2j/a;->b:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 9
    iput p1, p0, Lcom/google/re2j/a;->b:I

    aput p2, v0, v2

    return-object p0
.end method

.method j([[I)Lcom/google/re2j/a;
    .locals 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 2
    aget v4, v3, v1

    const/4 v5, 0x1

    aget v6, v3, v5

    const/4 v7, 0x2

    aget v3, v3, v7

    if-ne v3, v5, :cond_0

    .line 3
    invoke-virtual {p0, v4, v6}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    goto :goto_2

    :cond_0
    :goto_1
    if-gt v4, v6, :cond_1

    .line 4
    invoke-virtual {p0, v4, v4}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method k([[II)Lcom/google/re2j/a;
    .locals 0

    if-gez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/re2j/a;->h([[I)Lcom/google/re2j/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/re2j/a;->j([[I)Lcom/google/re2j/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method m()Lcom/google/re2j/a;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/re2j/a;->b:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/re2j/a;->a:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/google/re2j/a;->q([III)V

    const/4 v0, 0x2

    .line 3
    :goto_0
    iget v1, p0, Lcom/google/re2j/a;->b:I

    if-ge v3, v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/google/re2j/a;->a:[I

    aget v2, v1, v3

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget v4, v1, v4

    add-int/lit8 v5, v0, -0x1

    .line 6
    aget v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    if-gt v2, v6, :cond_1

    .line 7
    aget v2, v1, v5

    if-le v4, v2, :cond_2

    .line 8
    aput v4, v1, v5

    goto :goto_1

    .line 9
    :cond_1
    aput v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    .line 10
    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 11
    :cond_3
    iput v0, p0, Lcom/google/re2j/a;->b:I

    return-object p0
.end method

.method p()Lcom/google/re2j/a;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/re2j/a;->b:I

    if-ge v0, v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/google/re2j/a;->a:[I

    aget v4, v3, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_0

    .line 3
    aput v2, v3, v1

    add-int/lit8 v2, v1, 0x1

    .line 4
    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x2

    :cond_0
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 5
    :cond_1
    iput v1, p0, Lcom/google/re2j/a;->b:I

    const v0, 0x10ffff

    if-gt v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    .line 6
    invoke-direct {p0, v1}, Lcom/google/re2j/a;->o(I)V

    .line 7
    iget-object v1, p0, Lcom/google/re2j/a;->a:[I

    iget v3, p0, Lcom/google/re2j/a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/re2j/a;->b:I

    aput v2, v1, v3

    add-int/lit8 v2, v4, 0x1

    .line 8
    iput v2, p0, Lcom/google/re2j/a;->b:I

    aput v0, v1, v4

    :cond_2
    return-object p0
.end method

.method r()[I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/re2j/a;->b:I

    iget-object v1, p0, Lcom/google/re2j/a;->a:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/re2j/a;->a:[I

    iget v1, p0, Lcom/google/re2j/a;->b:I

    invoke-static {v0, v1}, Lcom/google/re2j/a;->l([II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
