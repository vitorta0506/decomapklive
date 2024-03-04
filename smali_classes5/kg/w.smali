.class final Lkg/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkg/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkg/z;"
    }
.end annotation


# instance fields
.field final a:Lkg/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final d:Z

.field private final e:Lkg/t;

.field private final f:[Lkg/u;

.field private final g:[Lkg/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field m:I

.field n:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field o:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field p:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lkg/w;->d:Z

    .line 17
    iput-object p1, p0, Lkg/w;->a:Lkg/v;

    .line 18
    iput-object p2, p0, Lkg/w;->b:Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Lkg/w;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lkg/w;->h:I

    .line 21
    iput p1, p0, Lkg/w;->i:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lkg/w;->e:Lkg/t;

    .line 23
    iput-object p1, p0, Lkg/w;->f:[Lkg/u;

    .line 24
    iput-object p1, p0, Lkg/w;->g:[Lkg/a0;

    .line 25
    iput p4, p0, Lkg/w;->j:I

    .line 26
    iput-object p1, p0, Lkg/w;->k:Ljava/util/Deque;

    return-void
.end method

.method constructor <init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lkg/w;->d:Z

    .line 3
    iput-object p1, p0, Lkg/w;->a:Lkg/v;

    .line 4
    iput-object p2, p0, Lkg/w;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lkg/w;->c:Ljava/lang/Object;

    .line 6
    iput p4, p0, Lkg/w;->h:I

    .line 7
    iput p5, p0, Lkg/w;->i:I

    .line 8
    iput p6, p0, Lkg/w;->j:I

    .line 9
    iput p6, p0, Lkg/w;->l:I

    .line 10
    invoke-static {p7}, Lkg/w;->t(I)[Lkg/u;

    move-result-object p1

    iput-object p1, p0, Lkg/w;->f:[Lkg/u;

    .line 11
    new-instance p1, Lkg/t;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Lkg/t;-><init>(J)V

    iput-object p1, p0, Lkg/w;->e:Lkg/t;

    shr-int p1, p6, p5

    .line 12
    new-array p2, p1, [Lkg/a0;

    iput-object p2, p0, Lkg/w;->g:[Lkg/a0;

    int-to-long p2, p1

    const/16 p4, 0x22

    shl-long/2addr p2, p4

    .line 13
    invoke-direct {p0, v0, p1, p2, p3}, Lkg/w;->o(IIJ)V

    .line 14
    new-instance p1, Ljava/util/ArrayDeque;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lkg/w;->k:Ljava/util/Deque;

    return-void
.end method

.method private A(JI)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lkg/w;->y(J)I

    move-result v0

    sub-int/2addr v0, p3

    if-lez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lkg/w;->x(J)I

    move-result p1

    add-int p2, p1, p3

    const/4 v1, 0x0

    .line 3
    invoke-static {p2, v0, v1}, Lkg/w;->B(III)J

    move-result-wide v1

    .line 4
    invoke-direct {p0, p2, v0, v1, v2}, Lkg/w;->o(IIJ)V

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p3, p2}, Lkg/w;->B(III)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide v0, 0x200000000L

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private static B(III)J
    .locals 3

    int-to-long v0, p0

    const/16 p0, 0x31

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const/16 v2, 0x22

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x21

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private C(I)I
    .locals 5

    const/16 v0, 0x64

    if-nez p1, :cond_0

    return v0

    :cond_0
    int-to-long v1, p1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    iget p1, p0, Lkg/w;->j:I

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int p1, v1

    if-nez p1, :cond_1

    const/16 p1, 0x63

    return p1

    :cond_1
    sub-int/2addr v0, p1

    return v0
.end method

.method private c(I)J
    .locals 7

    .line 1
    iget v0, p0, Lkg/w;->i:I

    shr-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v0, p1}, Lkg/q0;->e(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lkg/w;->f:[Lkg/u;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-direct {p0, v0}, Lkg/w;->w(I)I

    move-result v0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    if-ne v0, v2, :cond_0

    .line 5
    monitor-exit v1

    return-wide v3

    .line 6
    :cond_0
    iget-object v2, p0, Lkg/w;->f:[Lkg/u;

    aget-object v0, v2, v0

    .line 7
    invoke-virtual {v0}, Lkg/u;->d()J

    move-result-wide v5

    .line 8
    invoke-direct {p0, v0, v5, v6}, Lkg/w;->v(Lkg/u;J)V

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, v5, v6, p1}, Lkg/w;->A(JI)J

    move-result-wide v5

    .line 10
    :cond_1
    iget p1, p0, Lkg/w;->i:I

    invoke-static {p1, v5, v6}, Lkg/w;->z(IJ)I

    move-result p1

    .line 11
    iget v0, p0, Lkg/w;->l:I

    sub-int/2addr v0, p1

    iput v0, p0, Lkg/w;->l:I

    .line 12
    iget v0, p0, Lkg/w;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lkg/w;->m:I

    .line 13
    monitor-exit v1

    return-wide v5

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(I)J
    .locals 9

    .line 1
    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v0, p1}, Lkg/v;->u(I)Lkg/a0;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lkg/w;->f(I)I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lkg/w;->c(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-wide/16 v1, -0x1

    .line 5
    monitor-exit v0

    return-wide v1

    .line 6
    :cond_0
    invoke-static {v1, v2}, Lkg/w;->x(J)I

    move-result v8

    .line 7
    iget-object v3, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v3, p1}, Lkg/q0;->l(I)I

    move-result v7

    .line 8
    new-instance p1, Lkg/a0;

    iget v4, p0, Lkg/w;->i:I

    .line 9
    invoke-static {v4, v1, v2}, Lkg/w;->z(IJ)I

    move-result v6

    move-object v1, p1

    move-object v2, v0

    move-object v3, p0

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lkg/a0;-><init>(Lkg/a0;Lkg/w;IIII)V

    .line 10
    iget-object v1, p0, Lkg/w;->g:[Lkg/a0;

    aput-object p1, v1, v8

    .line 11
    invoke-virtual {p1}, Lkg/a0;->b()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static e(J)I
    .locals 0

    long-to-int p1, p0

    return p1
.end method

.method private f(I)I
    .locals 4

    .line 1
    iget v0, p0, Lkg/w;->i:I

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 2
    iget-object v1, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v1, p1}, Lkg/q0;->l(I)I

    move-result p1

    const/4 v1, 0x0

    .line 3
    :cond_0
    iget v2, p0, Lkg/w;->h:I

    add-int/2addr v1, v2

    .line 4
    div-int v2, v1, p1

    if-ge v2, v0, :cond_1

    mul-int v3, v2, p1

    if-ne v1, v3, :cond_0

    :cond_1
    :goto_0
    if-le v2, v0, :cond_2

    .line 5
    iget v2, p0, Lkg/w;->h:I

    sub-int/2addr v1, v2

    .line 6
    div-int v2, v1, p1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private g(J)J
    .locals 8

    .line 1
    :goto_0
    invoke-static {p1, p2}, Lkg/w;->x(J)I

    move-result v0

    .line 2
    invoke-static {p1, p2}, Lkg/w;->y(J)I

    move-result v1

    add-int v2, v0, v1

    .line 3
    invoke-direct {p0, v2}, Lkg/w;->l(I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    return-wide p1

    .line 4
    :cond_0
    invoke-static {v3, v4}, Lkg/w;->x(J)I

    move-result v5

    .line 5
    invoke-static {v3, v4}, Lkg/w;->y(J)I

    move-result v6

    cmp-long v7, v3, p1

    if-eqz v7, :cond_1

    if-ne v2, v5, :cond_1

    .line 6
    invoke-direct {p0, v3, v4}, Lkg/w;->u(J)V

    add-int/2addr v1, v6

    const/4 p1, 0x0

    .line 7
    invoke-static {v0, v1, p1}, Lkg/w;->B(III)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method private h(J)J
    .locals 7

    .line 1
    :goto_0
    invoke-static {p1, p2}, Lkg/w;->x(J)I

    move-result v0

    .line 2
    invoke-static {p1, p2}, Lkg/w;->y(J)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    .line 3
    invoke-direct {p0, v2}, Lkg/w;->l(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide p1

    .line 4
    :cond_0
    invoke-static {v2, v3}, Lkg/w;->x(J)I

    move-result v4

    .line 5
    invoke-static {v2, v3}, Lkg/w;->y(J)I

    move-result v5

    cmp-long v6, v2, p1

    if-eqz v6, :cond_1

    add-int v6, v4, v5

    if-ne v6, v0, :cond_1

    .line 6
    invoke-direct {p0, v2, v3}, Lkg/w;->u(J)V

    add-int/2addr v5, v1

    const/4 p1, 0x0

    .line 7
    invoke-static {v4, v5, p1}, Lkg/w;->B(III)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method private i(J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lkg/w;->h(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lkg/w;->g(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private l(I)J
    .locals 3

    iget-object v0, p0, Lkg/w;->e:Lkg/t;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lkg/t;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private o(IIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v0, p2}, Lkg/q0;->g(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lkg/w;->f:[Lkg/u;

    aget-object v0, v1, v0

    .line 3
    invoke-virtual {v0, p3, p4}, Lkg/u;->c(J)V

    .line 4
    invoke-direct {p0, p1, p3, p4}, Lkg/w;->p(IJ)V

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 5
    invoke-static {p1, p2}, Lkg/w;->s(II)I

    move-result p1

    invoke-direct {p0, p1, p3, p4}, Lkg/w;->p(IJ)V

    :cond_0
    return-void
.end method

.method private p(IJ)V
    .locals 3

    iget-object v0, p0, Lkg/w;->e:Lkg/t;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2, p3}, Lkg/t;->e(JJ)J

    return-void
.end method

.method static q(J)Z
    .locals 0

    invoke-static {p0, p1}, Lkg/w;->r(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static r(J)Z
    .locals 3

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static s(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static t(I)[Lkg/u;
    .locals 3

    .line 1
    new-array v0, p0, [Lkg/u;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2
    new-instance v2, Lkg/u;

    invoke-direct {v2}, Lkg/u;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private u(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    invoke-static {p1, p2}, Lkg/w;->y(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lkg/q0;->g(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lkg/w;->f:[Lkg/u;

    aget-object v0, v1, v0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lkg/w;->v(Lkg/u;J)V

    return-void
.end method

.method private v(Lkg/u;J)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2, p3}, Lkg/u;->e(J)V

    .line 2
    invoke-static {p2, p3}, Lkg/w;->x(J)I

    move-result p1

    .line 3
    invoke-static {p2, p3}, Lkg/w;->y(J)I

    move-result p2

    .line 4
    iget-object p3, p0, Lkg/w;->e:Lkg/t;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Lkg/t;->f(J)V

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    .line 5
    iget-object p3, p0, Lkg/w;->e:Lkg/t;

    invoke-static {p1, p2}, Lkg/w;->s(II)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Lkg/t;->f(J)V

    :cond_0
    return-void
.end method

.method private w(I)I
    .locals 2

    .line 1
    iget v0, p0, Lkg/w;->l:I

    iget v1, p0, Lkg/w;->j:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lkg/w;->a:Lkg/v;

    iget p1, p1, Lkg/q0;->g:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    iget v0, v0, Lkg/q0;->g:I

    if-ge p1, v0, :cond_2

    .line 4
    iget-object v0, p0, Lkg/w;->f:[Lkg/u;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lkg/u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method static x(J)I
    .locals 1

    const/16 v0, 0x31

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static y(J)I
    .locals 2

    const/16 v0, 0x22

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x7fff

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static z(IJ)I
    .locals 0

    invoke-static {p1, p2}, Lkg/w;->y(J)I

    move-result p1

    shl-int p0, p1, p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lkg/w;->j:I

    return v0
.end method

.method b(Lkg/c0;IILkg/b0;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;II",
            "Lkg/b0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    iget v1, v0, Lkg/q0;->h:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-gt p3, v1, :cond_0

    .line 2
    invoke-direct {p0, p3}, Lkg/w;->d(I)J

    move-result-wide v0

    cmp-long p3, v0, v3

    if-gez p3, :cond_1

    return v2

    .line 3
    :cond_0
    invoke-virtual {v0, p3}, Lkg/q0;->l(I)I

    move-result p3

    .line 4
    invoke-direct {p0, p3}, Lkg/w;->c(I)J

    move-result-wide v0

    cmp-long p3, v0, v3

    if-gez p3, :cond_1

    return v2

    :cond_1
    move-wide v6, v0

    .line 5
    iget-object p3, p0, Lkg/w;->k:Ljava/util/Deque;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    move-object v5, p3

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    move-object v9, p4

    .line 6
    invoke-virtual/range {v3 .. v9}, Lkg/w;->m(Lkg/c0;Ljava/nio/ByteBuffer;JILkg/b0;)V

    const/4 p1, 0x1

    return p1
.end method

.method j()V
    .locals 1

    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v0, p0}, Lkg/v;->r(Lkg/w;)V

    return-void
.end method

.method k(JILjava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    iget v0, p0, Lkg/w;->i:I

    invoke-static {v0, p1, p2}, Lkg/w;->z(IJ)I

    move-result v0

    .line 2
    iget v1, p0, Lkg/w;->m:I

    sub-int/2addr v1, v0

    iput v1, p0, Lkg/w;->m:I

    .line 3
    invoke-static {p1, p2}, Lkg/w;->r(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v1, p3}, Lkg/q0;->h(I)I

    move-result p3

    .line 5
    iget-object v1, p0, Lkg/w;->a:Lkg/v;

    invoke-virtual {v1, p3}, Lkg/v;->u(I)Lkg/a0;

    move-result-object p3

    .line 6
    invoke-static {p1, p2}, Lkg/w;->x(J)I

    move-result v1

    .line 7
    iget-object v2, p0, Lkg/w;->g:[Lkg/a0;

    aget-object v2, v2, v1

    .line 8
    monitor-enter p3

    .line 9
    :try_start_0
    invoke-static {p1, p2}, Lkg/w;->e(J)I

    move-result v3

    invoke-virtual {v2, p3, v3}, Lkg/a0;->f(Lkg/a0;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    monitor-exit p3

    return-void

    .line 11
    :cond_0
    iget-object v2, p0, Lkg/w;->g:[Lkg/a0;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 12
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object p3, p0, Lkg/w;->f:[Lkg/u;

    monitor-enter p3

    .line 14
    :try_start_1
    invoke-direct {p0, p1, p2}, Lkg/w;->i(J)J

    move-result-wide p1

    const-wide v1, -0x200000001L

    and-long/2addr p1, v1

    const-wide v1, -0x100000001L

    and-long/2addr p1, v1

    .line 15
    invoke-static {p1, p2}, Lkg/w;->x(J)I

    move-result v1

    invoke-static {p1, p2}, Lkg/w;->y(J)I

    move-result v2

    invoke-direct {p0, v1, v2, p1, p2}, Lkg/w;->o(IIJ)V

    .line 16
    iget p1, p0, Lkg/w;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/w;->l:I

    .line 17
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_2

    .line 18
    iget-object p1, p0, Lkg/w;->k:Ljava/util/Deque;

    if-eqz p1, :cond_2

    .line 19
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    sget p2, Lkg/d0;->z:I

    if-ge p1, p2, :cond_2

    .line 20
    iget-object p1, p0, Lkg/w;->k:Ljava/util/Deque;

    invoke-interface {p1, p4}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method m(Lkg/c0;Ljava/nio/ByteBuffer;JILkg/b0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    .line 1
    invoke-static {p3, p4}, Lkg/w;->q(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p3, p4}, Lkg/w;->x(J)I

    move-result v0

    iget v1, v9, Lkg/w;->i:I

    shl-int v5, v0, v1

    move-wide v3, p3

    .line 3
    invoke-static {v1, p3, p4}, Lkg/w;->z(IJ)I

    move-result v7

    iget-object v0, v9, Lkg/w;->a:Lkg/v;

    iget-object v0, v0, Lkg/v;->n:Lkg/d0;

    invoke-virtual {v0}, Lkg/d0;->Q()Lkg/b0;

    move-result-object v8

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v6, p5

    .line 4
    invoke-virtual/range {v0 .. v8}, Lkg/c0;->I3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V

    goto :goto_0

    :cond_0
    move-wide v3, p3

    .line 5
    invoke-virtual/range {p0 .. p6}, Lkg/w;->n(Lkg/c0;Ljava/nio/ByteBuffer;JILkg/b0;)V

    :goto_0
    return-void
.end method

.method n(Lkg/c0;Ljava/nio/ByteBuffer;JILkg/b0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    .line 1
    invoke-static {p3, p4}, Lkg/w;->x(J)I

    move-result v0

    .line 2
    invoke-static {p3, p4}, Lkg/w;->e(J)I

    move-result v1

    .line 3
    iget-object v2, v9, Lkg/w;->g:[Lkg/a0;

    aget-object v2, v2, v0

    .line 4
    iget v3, v9, Lkg/w;->i:I

    shl-int/2addr v0, v3

    iget v7, v2, Lkg/a0;->i:I

    mul-int v1, v1, v7

    add-int v5, v0, v1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    move-object/from16 v8, p6

    .line 5
    invoke-virtual/range {v0 .. v8}, Lkg/c0;->I3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkg/w;->a:Lkg/v;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lkg/w;->l:I

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chunk("

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {p0, v1}, Lkg/w;->C(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkg/w;->j:I

    sub-int/2addr v2, v1

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkg/w;->j:I

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
