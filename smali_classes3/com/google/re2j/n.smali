.class Lcom/google/re2j/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([[II)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-gt p1, v2, :cond_4

    .line 1
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 2
    aget v5, v4, v0

    if-le p1, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    aget p0, v4, v1

    if-ge p1, p0, :cond_1

    return v1

    .line 4
    :cond_1
    aget p0, v4, v1

    sub-int/2addr p1, p0

    const/4 p0, 0x2

    aget p0, v4, p0

    rem-int/2addr p1, p0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v1

    .line 5
    :cond_4
    array-length v2, p0

    if-lez v2, :cond_5

    aget-object v2, p0, v1

    aget v2, v2, v1

    if-lt p1, v2, :cond_5

    invoke-static {p0, p1}, Lcom/google/re2j/n;->b([[II)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static b([[II)Z
    .locals 8

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    sub-int v3, v0, v2

    const/4 v4, 0x2

    .line 2
    div-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 3
    aget-object v5, p0, v3

    .line 4
    aget v6, v5, v1

    if-gt v6, p1, :cond_1

    const/4 v6, 0x1

    aget v7, v5, v6

    if-gt p1, v7, :cond_1

    .line 5
    aget p0, v5, v1

    sub-int/2addr p1, p0

    aget p0, v5, v4

    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 6
    :cond_1
    aget v4, v5, v1

    if-ge p1, v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method static c(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-gt p0, v2, :cond_3

    const/16 v2, 0x20

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7f

    if-lt p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xa1

    if-lt p0, v2, :cond_2

    const/16 v2, 0xad

    if-eq p0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1
    :cond_3
    sget-object v2, Lcom/google/re2j/o;->I:[[I

    invoke-static {v2, p0}, Lcom/google/re2j/n;->a([[II)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/re2j/o;->J:[[I

    .line 2
    invoke-static {v2, p0}, Lcom/google/re2j/n;->a([[II)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/re2j/o;->K:[[I

    .line 3
    invoke-static {v2, p0}, Lcom/google/re2j/n;->a([[II)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/re2j/o;->E:[[I

    .line 4
    invoke-static {v2, p0}, Lcom/google/re2j/n;->a([[II)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/re2j/o;->F:[[I

    .line 5
    invoke-static {v2, p0}, Lcom/google/re2j/n;->a([[II)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method static d(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/re2j/o;->a:[C

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-char v1, v0, p0

    if-eqz v1, :cond_0

    .line 2
    aget-char p0, v0, p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/re2j/c;->a(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/google/re2j/c;->b(I)I

    move-result p0

    return p0
.end method
