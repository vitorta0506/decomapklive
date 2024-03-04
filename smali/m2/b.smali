.class public final Lm2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/l;


# static fields
.field public static final d:Lc2/r;


# instance fields
.field private final a:Lm2/c;

.field private final b:Lcom/google/android/exoplayer2/util/b0;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lm2/a;->b:Lm2/a;

    sput-object v0, Lm2/b;->d:Lc2/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm2/c;

    invoke-direct {v0}, Lm2/c;-><init>()V

    iput-object v0, p0, Lm2/b;->a:Lm2/c;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    iput-object v0, p0, Lm2/b;->b:Lcom/google/android/exoplayer2/util/b0;

    return-void
.end method

.method public static synthetic c()[Lc2/l;
    .locals 1

    invoke-static {}, Lm2/b;->d()[Lc2/l;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic d()[Lc2/l;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lc2/l;

    new-instance v1, Lm2/b;

    invoke-direct {v1}, Lm2/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lm2/b;->c:Z

    .line 2
    iget-object p1, p0, Lm2/b;->a:Lm2/c;

    invoke-virtual {p1}, Lm2/c;->c()V

    return-void
.end method

.method public b(Lc2/m;Lc2/a0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lm2/b;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lc2/m;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p2, p0, Lm2/b;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 3
    iget-object p2, p0, Lm2/b;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/b0;->O(I)V

    .line 4
    iget-boolean p1, p0, Lm2/b;->c:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lm2/b;->a:Lm2/c;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lm2/c;->f(JI)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lm2/b;->c:Z

    .line 7
    :cond_1
    iget-object p1, p0, Lm2/b;->a:Lm2/c;

    iget-object p2, p0, Lm2/b;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p1, p2}, Lm2/c;->b(Lcom/google/android/exoplayer2/util/b0;)V

    return v0
.end method

.method public f(Lc2/n;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm2/b;->a:Lm2/c;

    new-instance v1, Lm2/i0$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lm2/i0$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lm2/c;->d(Lc2/n;Lm2/i0$d;)V

    .line 2
    invoke-interface {p1}, Lc2/n;->o()V

    .line 3
    new-instance v0, Lc2/b0$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lc2/b0$b;-><init>(J)V

    invoke-interface {p1, v0}, Lc2/n;->l(Lc2/b0;)V

    return-void
.end method

.method public h(Lc2/m;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v1}, Lc2/m;->m([BII)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->G()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_4

    .line 5
    invoke-interface {p1}, Lc2/m;->f()V

    .line 6
    invoke-interface {p1, v3}, Lc2/m;->i(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 7
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p1, v5, v2, v6}, Lc2/m;->m([BII)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->J()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    .line 10
    invoke-interface {p1}, Lc2/m;->f()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 11
    :cond_0
    invoke-interface {p1, v4}, Lc2/m;->i(I)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_2

    return v5

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/b;->f([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x6

    .line 13
    invoke-interface {p1, v5}, Lc2/m;->i(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/b0;->Q(I)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->C()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 16
    invoke-interface {p1, v4}, Lc2/m;->i(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method
