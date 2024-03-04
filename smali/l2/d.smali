.class public Ll2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/l;


# static fields
.field public static final d:Lc2/r;


# instance fields
.field private a:Lc2/n;

.field private b:Ll2/i;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ll2/c;->b:Ll2/c;

    sput-object v0, Ll2/d;->d:Lc2/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c()[Lc2/l;
    .locals 1

    invoke-static {}, Ll2/d;->d()[Lc2/l;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic d()[Lc2/l;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lc2/l;

    new-instance v1, Ll2/d;

    invoke-direct {v1}, Ll2/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static e(Lcom/google/android/exoplayer2/util/b0;)Lcom/google/android/exoplayer2/util/b0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    return-object p0
.end method

.method private g(Lc2/m;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll2/f;

    invoke-direct {v0}, Ll2/f;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Ll2/f;->a(Lc2/m;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Ll2/f;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, v0, Ll2/f;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/util/b0;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Lc2/m;->m([BII)V

    .line 6
    invoke-static {v2}, Ll2/d;->e(Lcom/google/android/exoplayer2/util/b0;)Lcom/google/android/exoplayer2/util/b0;

    move-result-object p1

    invoke-static {p1}, Ll2/b;->p(Lcom/google/android/exoplayer2/util/b0;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Ll2/b;

    invoke-direct {p1}, Ll2/b;-><init>()V

    iput-object p1, p0, Ll2/d;->b:Ll2/i;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Ll2/d;->e(Lcom/google/android/exoplayer2/util/b0;)Lcom/google/android/exoplayer2/util/b0;

    move-result-object p1

    invoke-static {p1}, Ll2/j;->r(Lcom/google/android/exoplayer2/util/b0;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Ll2/j;

    invoke-direct {p1}, Ll2/j;-><init>()V

    iput-object p1, p0, Ll2/d;->b:Ll2/i;

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v2}, Ll2/d;->e(Lcom/google/android/exoplayer2/util/b0;)Lcom/google/android/exoplayer2/util/b0;

    move-result-object p1

    invoke-static {p1}, Ll2/h;->p(Lcom/google/android/exoplayer2/util/b0;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Ll2/h;

    invoke-direct {p1}, Ll2/h;-><init>()V

    iput-object p1, p0, Ll2/d;->b:Ll2/i;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public a(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/d;->b:Ll2/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Ll2/i;->m(JJ)V

    :cond_0
    return-void
.end method

.method public b(Lc2/m;Lc2/a0;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/d;->a:Lc2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll2/d;->b:Ll2/i;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Ll2/d;->g(Lc2/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lc2/m;->f()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Failed to determine bitstream type"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ll2/d;->c:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Ll2/d;->a:Lc2/n;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lc2/n;->q(II)Lc2/e0;

    move-result-object v0

    .line 8
    iget-object v1, p0, Ll2/d;->a:Lc2/n;

    invoke-interface {v1}, Lc2/n;->o()V

    .line 9
    iget-object v1, p0, Ll2/d;->b:Ll2/i;

    iget-object v3, p0, Ll2/d;->a:Lc2/n;

    invoke-virtual {v1, v3, v0}, Ll2/i;->d(Lc2/n;Lc2/e0;)V

    .line 10
    iput-boolean v2, p0, Ll2/d;->c:Z

    .line 11
    :cond_2
    iget-object v0, p0, Ll2/d;->b:Ll2/i;

    invoke-virtual {v0, p1, p2}, Ll2/i;->g(Lc2/m;Lc2/a0;)I

    move-result p1

    return p1
.end method

.method public f(Lc2/n;)V
    .locals 0

    iput-object p1, p0, Ll2/d;->a:Lc2/n;

    return-void
.end method

.method public h(Lc2/m;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Ll2/d;->g(Lc2/m;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
