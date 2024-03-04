.class Lcom/google/re2j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/d$b;
    }
.end annotation


# static fields
.field private static final b:[I

.field private static final c:[I


# instance fields
.field private final a:Lcom/google/re2j/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/re2j/d;->b:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/re2j/d;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x9
        0xb
        0x10ffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x10ffff
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/re2j/j;

    invoke-direct {v0}, Lcom/google/re2j/j;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    return-void
.end method

.method private a(Lcom/google/re2j/d$b;Lcom/google/re2j/d$b;)Lcom/google/re2j/d$b;
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/re2j/d$b;->a:I

    if-nez v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget v0, p2, Lcom/google/re2j/d$b;->a:I

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v2, v0, Lcom/google/re2j/d$b;->a:I

    invoke-virtual {v1, v2}, Lcom/google/re2j/j;->c(I)Lcom/google/re2j/e;

    move-result-object v1

    .line 5
    iget v2, p1, Lcom/google/re2j/d$b;->a:I

    iput v2, v1, Lcom/google/re2j/e;->b:I

    .line 6
    iget v2, p2, Lcom/google/re2j/d$b;->a:I

    iput v2, v1, Lcom/google/re2j/e;->c:I

    .line 7
    iget-object v1, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget p1, p1, Lcom/google/re2j/d$b;->b:I

    iget p2, p2, Lcom/google/re2j/d$b;->b:I

    invoke-virtual {v1, p1, p2}, Lcom/google/re2j/j;->b(II)I

    move-result p1

    iput p1, v0, Lcom/google/re2j/d$b;->b:I

    return-object v0
.end method

.method private b(I)Lcom/google/re2j/d$b;
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/google/re2j/d$b;->a:I

    shl-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/re2j/d$b;->b:I

    .line 3
    iget-object v2, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    invoke-virtual {v2, v1}, Lcom/google/re2j/j;->c(I)Lcom/google/re2j/e;

    move-result-object v1

    iput p1, v1, Lcom/google/re2j/e;->c:I

    .line 4
    iget-object v1, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v2, v1, Lcom/google/re2j/j;->d:I

    add-int/lit8 p1, p1, 0x1

    if-ge v2, p1, :cond_0

    .line 5
    iput p1, v1, Lcom/google/re2j/j;->d:I

    :cond_0
    return-object v0
.end method

.method private c(Lcom/google/re2j/d$b;Lcom/google/re2j/d$b;)Lcom/google/re2j/d$b;
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/re2j/d$b;->a:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/google/re2j/d$b;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v2, p1, Lcom/google/re2j/d$b;->b:I

    invoke-virtual {v1, v2, v0}, Lcom/google/re2j/j;->f(II)V

    .line 3
    new-instance v0, Lcom/google/re2j/d$b;

    iget p1, p1, Lcom/google/re2j/d$b;->a:I

    iget p2, p2, Lcom/google/re2j/d$b;->b:I

    invoke-direct {v0, p1, p2}, Lcom/google/re2j/d$b;-><init>(II)V

    return-object v0

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/re2j/d;->g()Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/re2j/d$a;->a:[I

    iget-object v1, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "regexp: unhandled case in compile"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v0, p1

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/re2j/d;->i()Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    array-length v0, p1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v2, p1, v4

    .line 6
    invoke-direct {p0, v2}, Lcom/google/re2j/d;->d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;

    move-result-object v2

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/re2j/d;->a(Lcom/google/re2j/d$b;Lcom/google/re2j/d$b;)Lcom/google/re2j/d$b;

    move-result-object v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 8
    :pswitch_1
    iget-object p1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v0, p1

    if-nez v0, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/google/re2j/d;->i()Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    array-length v0, p1

    :goto_2
    if-ge v4, v0, :cond_5

    aget-object v2, p1, v4

    .line 11
    invoke-direct {p0, v2}, Lcom/google/re2j/d;->d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;

    move-result-object v2

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_3

    .line 12
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/google/re2j/d;->c(Lcom/google/re2j/d$b;Lcom/google/re2j/d$b;)Lcom/google/re2j/d$b;

    move-result-object v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v1

    .line 13
    :pswitch_2
    iget-object v0, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/google/re2j/d;->d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;

    move-result-object v0

    iget p1, p1, Lcom/google/re2j/l;->b:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/d;->k(Lcom/google/re2j/d$b;Z)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_3
    iget-object v0, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/google/re2j/d;->d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;

    move-result-object v0

    iget p1, p1, Lcom/google/re2j/l;->b:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/d;->j(Lcom/google/re2j/d$b;Z)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_4
    iget-object v0, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/google/re2j/d;->d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;

    move-result-object v0

    iget p1, p1, Lcom/google/re2j/l;->b:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/d;->n(Lcom/google/re2j/d$b;Z)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    iget v0, p1, Lcom/google/re2j/l;->g:I

    shl-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/re2j/d;->b(I)Lcom/google/re2j/d$b;

    move-result-object v0

    iget-object v1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v1, v1, v4

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/re2j/d;->d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p1, Lcom/google/re2j/l;->g:I

    shl-int/2addr p1, v3

    or-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/google/re2j/d;->b(I)Lcom/google/re2j/d$b;

    move-result-object p1

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/google/re2j/d;->c(Lcom/google/re2j/d$b;Lcom/google/re2j/d$b;)Lcom/google/re2j/d$b;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/re2j/d;->c(Lcom/google/re2j/d$b;Lcom/google/re2j/d$b;)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/google/re2j/d;->f(I)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/16 p1, 0x10

    .line 19
    invoke-direct {p0, p1}, Lcom/google/re2j/d;->f(I)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    :pswitch_8
    const/16 p1, 0x8

    .line 20
    invoke-direct {p0, p1}, Lcom/google/re2j/d;->f(I)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    :pswitch_9
    const/4 p1, 0x4

    .line 21
    invoke-direct {p0, p1}, Lcom/google/re2j/d;->f(I)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    :pswitch_a
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1}, Lcom/google/re2j/d;->f(I)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_b
    invoke-direct {p0, v3}, Lcom/google/re2j/d;->f(I)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_c
    sget-object p1, Lcom/google/re2j/d;->c:[I

    invoke-direct {p0, p1, v4}, Lcom/google/re2j/d;->m([II)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_d
    sget-object p1, Lcom/google/re2j/d;->b:[I

    invoke-direct {p0, p1, v4}, Lcom/google/re2j/d;->m([II)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_e
    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    iget p1, p1, Lcom/google/re2j/l;->b:I

    invoke-direct {p0, v0, p1}, Lcom/google/re2j/d;->m([II)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_f
    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    array-length v2, v0

    if-nez v2, :cond_9

    .line 28
    invoke-direct {p0}, Lcom/google/re2j/d;->i()Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 29
    :cond_9
    array-length v2, v0

    :goto_7
    if-ge v4, v2, :cond_b

    aget v3, v0, v4

    .line 30
    iget v5, p1, Lcom/google/re2j/l;->b:I

    invoke-direct {p0, v3, v5}, Lcom/google/re2j/d;->l(II)Lcom/google/re2j/d$b;

    move-result-object v3

    if-nez v1, :cond_a

    move-object v1, v3

    goto :goto_8

    .line 31
    :cond_a
    invoke-direct {p0, v1, v3}, Lcom/google/re2j/d;->c(Lcom/google/re2j/d$b;Lcom/google/re2j/d$b;)Lcom/google/re2j/d$b;

    move-result-object v1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    return-object v1

    .line 32
    :pswitch_10
    invoke-direct {p0}, Lcom/google/re2j/d;->i()Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_11
    invoke-direct {p0}, Lcom/google/re2j/d;->g()Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 34
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static e(Lcom/google/re2j/l;)Lcom/google/re2j/j;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/re2j/d;

    invoke-direct {v0}, Lcom/google/re2j/d;-><init>()V

    .line 2
    invoke-direct {v0, p0}, Lcom/google/re2j/d;->d(Lcom/google/re2j/l;)Lcom/google/re2j/d$b;

    move-result-object p0

    .line 3
    iget-object v1, v0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v2, p0, Lcom/google/re2j/d$b;->b:I

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v3

    iget v3, v3, Lcom/google/re2j/d$b;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/google/re2j/j;->f(II)V

    .line 4
    iget-object v0, v0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget p0, p0, Lcom/google/re2j/d$b;->a:I

    iput p0, v0, Lcom/google/re2j/j;->c:I

    return-object v0
.end method

.method private f(I)Lcom/google/re2j/d$b;
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v2, v0, Lcom/google/re2j/d$b;->a:I

    invoke-virtual {v1, v2}, Lcom/google/re2j/j;->c(I)Lcom/google/re2j/e;

    move-result-object v1

    iput p1, v1, Lcom/google/re2j/e;->c:I

    .line 3
    iget p1, v0, Lcom/google/re2j/d$b;->a:I

    shl-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/google/re2j/d$b;->b:I

    return-object v0
.end method

.method private g()Lcom/google/re2j/d$b;
    .locals 1

    new-instance v0, Lcom/google/re2j/d$b;

    invoke-direct {v0}, Lcom/google/re2j/d$b;-><init>()V

    return-object v0
.end method

.method private h(I)Lcom/google/re2j/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    invoke-virtual {v0, p1}, Lcom/google/re2j/j;->a(I)V

    .line 2
    new-instance p1, Lcom/google/re2j/d$b;

    iget-object v0, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    invoke-virtual {v0}, Lcom/google/re2j/j;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0}, Lcom/google/re2j/d$b;-><init>(I)V

    return-object p1
.end method

.method private i()Lcom/google/re2j/d$b;
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/google/re2j/d$b;->a:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/re2j/d$b;->b:I

    return-object v0
.end method

.method private j(Lcom/google/re2j/d$b;Z)Lcom/google/re2j/d$b;
    .locals 2

    new-instance v0, Lcom/google/re2j/d$b;

    iget v1, p1, Lcom/google/re2j/d$b;->a:I

    invoke-direct {p0, p1, p2}, Lcom/google/re2j/d;->n(Lcom/google/re2j/d$b;Z)Lcom/google/re2j/d$b;

    move-result-object p1

    iget p1, p1, Lcom/google/re2j/d$b;->b:I

    invoke-direct {v0, v1, p1}, Lcom/google/re2j/d$b;-><init>(II)V

    return-object v0
.end method

.method private k(Lcom/google/re2j/d$b;Z)Lcom/google/re2j/d$b;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v3, v1, Lcom/google/re2j/d$b;->a:I

    invoke-virtual {v2, v3}, Lcom/google/re2j/j;->c(I)Lcom/google/re2j/e;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 3
    iget p2, p1, Lcom/google/re2j/d$b;->a:I

    iput p2, v2, Lcom/google/re2j/e;->c:I

    .line 4
    iget p2, v1, Lcom/google/re2j/d$b;->a:I

    shl-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/d$b;->b:I

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p1, Lcom/google/re2j/d$b;->a:I

    iput p2, v2, Lcom/google/re2j/e;->b:I

    .line 6
    iget p2, v1, Lcom/google/re2j/d$b;->a:I

    shl-int/2addr p2, v0

    or-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/d$b;->b:I

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v0, v1, Lcom/google/re2j/d$b;->b:I

    iget p1, p1, Lcom/google/re2j/d$b;->b:I

    invoke-virtual {p2, v0, p1}, Lcom/google/re2j/j;->b(II)I

    move-result p1

    iput p1, v1, Lcom/google/re2j/d$b;->b:I

    return-object v1
.end method

.method private l(II)Lcom/google/re2j/d$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/re2j/d;->m([II)Lcom/google/re2j/d$b;

    move-result-object p1

    return-object p1
.end method

.method private m([II)Lcom/google/re2j/d$b;
    .locals 8

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v2, v0, Lcom/google/re2j/d$b;->a:I

    invoke-virtual {v1, v2}, Lcom/google/re2j/j;->c(I)Lcom/google/re2j/e;

    move-result-object v1

    .line 3
    iput-object p1, v1, Lcom/google/re2j/e;->d:[I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    .line 4
    array-length v3, p1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    aget v3, p1, v4

    invoke-static {v3}, Lcom/google/re2j/n;->d(I)I

    move-result v3

    aget v5, p1, v4

    if-ne v3, v5, :cond_1

    :cond_0
    and-int/lit8 p2, p2, -0x2

    .line 5
    :cond_1
    iput p2, v1, Lcom/google/re2j/e;->c:I

    .line 6
    iget v3, v0, Lcom/google/re2j/d$b;->a:I

    shl-int/2addr v3, v2

    iput v3, v0, Lcom/google/re2j/d$b;->b:I

    and-int/2addr p2, v2

    const/16 v3, 0x9

    if-nez p2, :cond_2

    .line 7
    array-length p2, p1

    if-eq p2, v2, :cond_3

    :cond_2
    array-length p2, p1

    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    aget p2, p1, v4

    aget v6, p1, v2

    if-ne p2, v6, :cond_4

    .line 8
    :cond_3
    iput v3, v1, Lcom/google/re2j/e;->a:I

    goto :goto_0

    .line 9
    :cond_4
    array-length p2, p1

    const v6, 0x10ffff

    if-ne p2, v5, :cond_5

    aget p2, p1, v4

    if-nez p2, :cond_5

    aget p2, p1, v2

    if-ne p2, v6, :cond_5

    const/16 p1, 0xa

    .line 10
    iput p1, v1, Lcom/google/re2j/e;->a:I

    goto :goto_0

    .line 11
    :cond_5
    array-length p2, p1

    const/4 v7, 0x4

    if-ne p2, v7, :cond_6

    aget p2, p1, v4

    if-nez p2, :cond_6

    aget p2, p1, v2

    if-ne p2, v3, :cond_6

    aget p2, p1, v5

    const/16 v2, 0xb

    if-ne p2, v2, :cond_6

    const/4 p2, 0x3

    aget p1, p1, p2

    if-ne p1, v6, :cond_6

    .line 12
    iput v2, v1, Lcom/google/re2j/e;->a:I

    :cond_6
    :goto_0
    return-object v0
.end method

.method private n(Lcom/google/re2j/d$b;Z)Lcom/google/re2j/d$b;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/re2j/d;->h(I)Lcom/google/re2j/d$b;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget v3, v1, Lcom/google/re2j/d$b;->a:I

    invoke-virtual {v2, v3}, Lcom/google/re2j/j;->c(I)Lcom/google/re2j/e;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 3
    iget p2, p1, Lcom/google/re2j/d$b;->a:I

    iput p2, v2, Lcom/google/re2j/e;->c:I

    .line 4
    iget p2, v1, Lcom/google/re2j/d$b;->a:I

    shl-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/d$b;->b:I

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p1, Lcom/google/re2j/d$b;->a:I

    iput p2, v2, Lcom/google/re2j/e;->b:I

    .line 6
    iget p2, v1, Lcom/google/re2j/d$b;->a:I

    shl-int/2addr p2, v0

    or-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/d$b;->b:I

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/google/re2j/d;->a:Lcom/google/re2j/j;

    iget p1, p1, Lcom/google/re2j/d$b;->b:I

    iget v0, v1, Lcom/google/re2j/d$b;->a:I

    invoke-virtual {p2, p1, v0}, Lcom/google/re2j/j;->f(II)V

    return-object v1
.end method
