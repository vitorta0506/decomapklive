.class final Lcom/xiaomi/push/service/x1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/x1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:[Lcom/xiaomi/push/service/x1$d;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/x1$c$a;->a:I

    new-array v0, v0, [Lcom/xiaomi/push/service/x1$d;

    iput-object v0, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    iput v0, p0, Lcom/xiaomi/push/service/x1$c$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/y1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/x1$c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/x1$c$a;Lcom/xiaomi/push/service/x1$d;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/x1$c$a;->b(Lcom/xiaomi/push/service/x1$d;)I

    move-result p0

    return p0
.end method

.method private b(Lcom/xiaomi/push/service/x1$d;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private l()V
    .locals 9

    iget v0, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    aget-object v3, v2, v0

    iget-wide v3, v3, Lcom/xiaomi/push/service/x1$d;->c:J

    aget-object v5, v2, v1

    iget-wide v5, v5, Lcom/xiaomi/push/service/x1$d;->c:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    aget-object v3, v2, v0

    aget-object v4, v2, v1

    aput-object v4, v2, v0

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m(I)V
    .locals 8

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-ge v0, v1, :cond_2

    if-lez v1, :cond_2

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    aget-object v3, v1, v2

    iget-wide v3, v3, Lcom/xiaomi/push/service/x1$d;->c:J

    aget-object v1, v1, v0

    iget-wide v5, v1, Lcom/xiaomi/push/service/x1$d;->c:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    move v0, v2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    aget-object v2, v1, p1

    iget-wide v2, v2, Lcom/xiaomi/push/service/x1$d;->c:J

    aget-object v4, v1, v0

    iget-wide v4, v4, Lcom/xiaomi/push/service/x1$d;->c:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v1, p1

    aget-object v3, v1, v0

    aput-object v3, v1, p1

    aput-object v2, v1, v0

    mul-int/lit8 p1, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    move v7, v0

    move v0, p1

    move p1, v7

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c()Lcom/xiaomi/push/service/x1$d;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/service/x1$c$a;->a:I

    new-array v0, v0, [Lcom/xiaomi/push/service/x1$d;

    iput-object v0, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    return-void
.end method

.method public e(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    aget-object v2, v1, v0

    iget v2, v2, Lcom/xiaomi/push/service/x1$d;->e:I

    if-ne v2, p1, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/x1$d;->b()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/x1$c$a;->j()V

    return-void
.end method

.method public f(ILcom/xiaomi/push/service/x1$b;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/xiaomi/push/service/x1$d;->d:Lcom/xiaomi/push/service/x1$b;

    if-ne v1, p2, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaomi/push/service/x1$d;->b()Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/x1$c$a;->j()V

    return-void
.end method

.method public g(Lcom/xiaomi/push/service/x1$d;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    array-length v1, v0

    iget v2, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-ne v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [Lcom/xiaomi/push/service/x1$d;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    iget v1, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    aput-object p1, v0, v1

    invoke-direct {p0}, Lcom/xiaomi/push/service/x1$c$a;->l()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/xiaomi/push/service/x1$d;->e:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/xiaomi/push/service/x1$d;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/push/service/x1$c$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/x1$c$a;->d:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/x1$c$a;->k(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/x1$c$a;->b:[Lcom/xiaomi/push/service/x1$d;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/service/x1$c$a;->c:I

    aget-object v2, v1, v0

    aput-object v2, v1, p1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/x1$c$a;->m(I)V

    :cond_0
    return-void
.end method
