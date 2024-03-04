.class final Lcom/google/re2j/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lcom/google/re2j/e;

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/re2j/e;

    .line 2
    iput-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/re2j/j;->b:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/google/re2j/j;->d:I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/re2j/j;->b:I

    iget-object v1, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/e;

    iput-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    iget v1, p0, Lcom/google/re2j/j;->b:I

    new-instance v2, Lcom/google/re2j/e;

    invoke-direct {v2, p1}, Lcom/google/re2j/e;-><init>(I)V

    aput-object v2, v0, v1

    .line 4
    iget p1, p0, Lcom/google/re2j/j;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/re2j/j;->b:I

    return-void
.end method

.method b(II)I
    .locals 3

    if-nez p1, :cond_0

    return p2

    :cond_0
    if-nez p2, :cond_1

    return p1

    :cond_1
    move v0, p1

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/j;->d(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    shr-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 3
    iput p2, v1, Lcom/google/re2j/e;->b:I

    goto :goto_1

    .line 4
    :cond_2
    iput p2, v1, Lcom/google/re2j/e;->c:I

    :goto_1
    return p1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method c(I)Lcom/google/re2j/e;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    aget-object p1, v0, p1

    return-object p1
.end method

.method d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    shr-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 2
    iget p1, v0, Lcom/google/re2j/e;->b:I

    return p1

    .line 3
    :cond_0
    iget p1, v0, Lcom/google/re2j/e;->c:I

    return p1
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/google/re2j/j;->b:I

    return v0
.end method

.method f(II)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    shr-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 2
    iget p1, v0, Lcom/google/re2j/e;->b:I

    .line 3
    iput p2, v0, Lcom/google/re2j/e;->b:I

    goto :goto_0

    .line 4
    :cond_0
    iget p1, v0, Lcom/google/re2j/e;->c:I

    .line 5
    iput p2, v0, Lcom/google/re2j/e;->c:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method g(Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/re2j/j;->c:I

    invoke-virtual {p0, v0}, Lcom/google/re2j/j;->h(I)Lcom/google/re2j/e;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/google/re2j/e;->a:I

    invoke-static {v1}, Lcom/google/re2j/e;->b(I)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/re2j/e;->d:[I

    array-length v1, v1

    if-eq v1, v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget v1, v0, Lcom/google/re2j/e;->a:I

    invoke-static {v1}, Lcom/google/re2j/e;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/re2j/e;->d:[I

    array-length v5, v1

    if-ne v5, v4, :cond_1

    iget v5, v0, Lcom/google/re2j/e;->c:I

    and-int/2addr v5, v4

    if-nez v5, :cond_1

    .line 4
    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 5
    iget v0, v0, Lcom/google/re2j/e;->b:I

    invoke-virtual {p0, v0}, Lcom/google/re2j/j;->h(I)Lcom/google/re2j/e;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget p1, v0, Lcom/google/re2j/e;->a:I

    if-ne p1, v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 7
    :cond_3
    :goto_1
    iget p1, v0, Lcom/google/re2j/e;->a:I

    if-ne p1, v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method h(I)Lcom/google/re2j/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    aget-object v0, v0, p1

    .line 2
    :goto_0
    iget v1, v0, Lcom/google/re2j/e;->a:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    .line 3
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    aget-object v0, v0, p1

    .line 4
    iget p1, v0, Lcom/google/re2j/e;->b:I

    goto :goto_0
.end method

.method i()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/re2j/j;->c:I

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    aget-object v0, v2, v0

    .line 3
    iget v2, v0, Lcom/google/re2j/e;->a:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget v2, v0, Lcom/google/re2j/e;->c:I

    or-int/2addr v1, v2

    .line 5
    :cond_2
    iget v0, v0, Lcom/google/re2j/e;->b:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/google/re2j/j;->b:I

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget v3, p0, Lcom/google/re2j/j;->c:I

    if-ne v1, v3, :cond_0

    const/16 v3, 0x2a

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const-string v2, "        "

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
