.class final Lkg/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[J

.field private c:I

.field private d:J

.field private final e:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lkg/t;->e:J

    .line 3
    iput-wide p1, p0, Lkg/t;->d:J

    const/16 p1, 0x20

    new-array p1, p1, [J

    .line 4
    iput-object p1, p0, Lkg/t;->b:[J

    const/16 p1, 0x1f

    .line 5
    iput p1, p0, Lkg/t;->a:I

    .line 6
    invoke-direct {p0}, Lkg/t;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/t;->b:[J

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    and-int/lit8 v1, v1, -0x2

    .line 2
    iput v1, p0, Lkg/t;->a:I

    int-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lkg/t;->c:I

    return-void
.end method

.method private b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lkg/t;->b:[J

    .line 2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    iput-object v1, p0, Lkg/t;->b:[J

    .line 3
    invoke-direct {p0}, Lkg/t;->a()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 5
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 6
    aget-wide v4, v0, v4

    .line 7
    invoke-virtual {p0, v2, v3, v4, v5}, Lkg/t;->e(JJ)J

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(J)I
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p1, p1, v1

    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p1, p1, v1

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lkg/t;->a:I

    and-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public c(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lkg/t;->d:J

    return-wide p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkg/t;->d(J)I

    move-result v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lkg/t;->c:I

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lkg/t;->b:[J

    aget-wide v3, v2, v0

    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 5
    aget-wide p1, v2, v0

    return-wide p1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 6
    iget v2, p0, Lkg/t;->a:I

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-wide p1, p0, Lkg/t;->e:J

    return-wide p1
.end method

.method public e(JJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lkg/t;->d:J

    .line 2
    iput-wide p3, p0, Lkg/t;->d:J

    return-wide p1

    .line 3
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lkg/t;->d(J)I

    move-result v2

    const/4 v3, 0x0

    .line 4
    :goto_1
    iget v4, p0, Lkg/t;->c:I

    if-ge v3, v4, :cond_6

    .line 5
    iget-object v4, p0, Lkg/t;->b:[J

    aget-wide v5, v4, v2

    cmp-long v7, v5, p1

    if-eqz v7, :cond_2

    cmp-long v7, v5, v0

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 6
    iget v4, p0, Lkg/t;->a:I

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    cmp-long v7, v5, v0

    if-nez v7, :cond_3

    .line 7
    iget-wide v5, p0, Lkg/t;->e:J

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v2, 0x1

    aget-wide v5, v4, v5

    .line 8
    :goto_3
    aput-wide p1, v4, v2

    add-int/lit8 v7, v2, 0x1

    .line 9
    aput-wide p3, v4, v7

    .line 10
    :goto_4
    iget p3, p0, Lkg/t;->c:I

    if-ge v3, p3, :cond_5

    add-int/lit8 v2, v2, 0x2

    .line 11
    iget p3, p0, Lkg/t;->a:I

    and-int/2addr v2, p3

    .line 12
    iget-object p3, p0, Lkg/t;->b:[J

    aget-wide v7, p3, v2

    cmp-long p4, v7, p1

    if-nez p4, :cond_4

    .line 13
    aput-wide v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    .line 14
    aget-wide v5, p3, v2

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-wide v5

    .line 15
    :cond_6
    invoke-direct {p0}, Lkg/t;->b()V

    goto :goto_0
.end method

.method public f(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lkg/t;->e:J

    iput-wide p1, p0, Lkg/t;->d:J

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkg/t;->d(J)I

    move-result v2

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lkg/t;->c:I

    if-ge v3, v4, :cond_2

    .line 4
    iget-object v4, p0, Lkg/t;->b:[J

    aget-wide v5, v4, v2

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    .line 5
    aput-wide v0, v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 6
    iget v4, p0, Lkg/t;->a:I

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
