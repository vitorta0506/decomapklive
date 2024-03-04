.class public final Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/b$a;,
        Ln2/b$c;,
        Ln2/b$b;
    }
.end annotation


# static fields
.field public static final h:Lc2/r;


# instance fields
.field private a:Lc2/n;

.field private b:Lc2/e0;

.field private c:I

.field private d:J

.field private e:Ln2/b$b;

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln2/a;->b:Ln2/a;

    sput-object v0, Ln2/b;->h:Lc2/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln2/b;->c:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Ln2/b;->d:J

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Ln2/b;->f:I

    .line 5
    iput-wide v0, p0, Ln2/b;->g:J

    return-void
.end method

.method public static synthetic c()[Lc2/l;
    .locals 1

    invoke-static {}, Ln2/b;->e()[Lc2/l;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/b;->b:Lc2/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln2/b;->a:Lc2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic e()[Lc2/l;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lc2/l;

    new-instance v1, Ln2/b;

    invoke-direct {v1}, Ln2/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private g(Lc2/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget v0, p0, Ln2/b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Lc2/m;->k(I)V

    const/4 p1, 0x4

    .line 4
    iput p1, p0, Ln2/b;->c:I

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Ln2/d;->a(Lc2/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p1}, Lc2/m;->h()J

    move-result-wide v0

    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lc2/m;->k(I)V

    .line 7
    iput v2, p0, Ln2/b;->c:I

    return-void

    :cond_2
    const/4 p1, 0x0

    const-string v0, "Unsupported or unrecognized wav file type."

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private i(Lc2/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ln2/d;->b(Lc2/m;)Ln2/c;

    move-result-object v3

    .line 2
    iget p1, v3, Ln2/c;->a:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Ln2/b$a;

    iget-object v0, p0, Ln2/b;->a:Lc2/n;

    iget-object v1, p0, Ln2/b;->b:Lc2/e0;

    invoke-direct {p1, v0, v1, v3}, Ln2/b$a;-><init>(Lc2/n;Lc2/e0;Ln2/c;)V

    iput-object p1, p0, Ln2/b;->e:Ln2/b$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 4
    new-instance p1, Ln2/b$c;

    iget-object v1, p0, Ln2/b;->a:Lc2/n;

    iget-object v2, p0, Ln2/b;->b:Lc2/e0;

    const/4 v5, -0x1

    const-string v4, "audio/g711-alaw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ln2/b$c;-><init>(Lc2/n;Lc2/e0;Ln2/c;Ljava/lang/String;I)V

    iput-object p1, p0, Ln2/b;->e:Ln2/b$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 5
    new-instance p1, Ln2/b$c;

    iget-object v1, p0, Ln2/b;->a:Lc2/n;

    iget-object v2, p0, Ln2/b;->b:Lc2/e0;

    const/4 v5, -0x1

    const-string v4, "audio/g711-mlaw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ln2/b$c;-><init>(Lc2/n;Lc2/e0;Ln2/c;Ljava/lang/String;I)V

    iput-object p1, p0, Ln2/b;->e:Ln2/b$b;

    goto :goto_0

    .line 6
    :cond_2
    iget v0, v3, Ln2/c;->f:I

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/i0;->a(II)I

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    new-instance p1, Ln2/b$c;

    iget-object v1, p0, Ln2/b;->a:Lc2/n;

    iget-object v2, p0, Ln2/b;->b:Lc2/e0;

    const-string v4, "audio/raw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ln2/b$c;-><init>(Lc2/n;Lc2/e0;Ln2/c;Ljava/lang/String;I)V

    iput-object p1, p0, Ln2/b;->e:Ln2/b$b;

    :goto_0
    const/4 p1, 0x3

    .line 9
    iput p1, p0, Ln2/b;->c:I

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported WAV format type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Ln2/c;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private j(Lc2/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ln2/d;->c(Lc2/m;)J

    move-result-wide v0

    iput-wide v0, p0, Ln2/b;->d:J

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Ln2/b;->c:I

    return-void
.end method

.method private k(Lc2/m;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ln2/b;->g:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-wide v0, p0, Ln2/b;->g:J

    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 3
    iget-object v3, p0, Ln2/b;->e:Ln2/b$b;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln2/b$b;

    invoke-interface {v3, p1, v0, v1}, Ln2/b$b;->b(Lc2/m;J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :cond_1
    return v2
.end method

.method private l(Lc2/m;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ln2/d;->e(Lc2/m;)Landroid/util/Pair;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Ln2/b;->f:I

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Ln2/b;->d:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    move-wide v0, v2

    .line 5
    :cond_0
    iget v2, p0, Ln2/b;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Ln2/b;->g:J

    .line 6
    invoke-interface {p1}, Lc2/m;->a()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    .line 7
    iget-wide v2, p0, Ln2/b;->g:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data exceeds input length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ln2/b;->g:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WavExtractor"

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-wide v0, p0, Ln2/b;->g:J

    .line 10
    :cond_1
    iget-object p1, p0, Ln2/b;->e:Ln2/b$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln2/b$b;

    iget v0, p0, Ln2/b;->f:I

    iget-wide v1, p0, Ln2/b;->g:J

    invoke-interface {p1, v0, v1, v2}, Ln2/b$b;->a(IJ)V

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Ln2/b;->c:I

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    iput p1, p0, Ln2/b;->c:I

    .line 2
    iget-object p1, p0, Ln2/b;->e:Ln2/b$b;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p3, p4}, Ln2/b$b;->c(J)V

    :cond_1
    return-void
.end method

.method public b(Lc2/m;Lc2/a0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln2/b;->d()V

    .line 2
    iget p2, p0, Ln2/b;->c:I

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Ln2/b;->k(Lc2/m;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Ln2/b;->l(Lc2/m;)V

    return v0

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Ln2/b;->i(Lc2/m;)V

    return v0

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Ln2/b;->j(Lc2/m;)V

    return v0

    .line 8
    :cond_4
    invoke-direct {p0, p1}, Ln2/b;->g(Lc2/m;)V

    return v0
.end method

.method public f(Lc2/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln2/b;->a:Lc2/n;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lc2/n;->q(II)Lc2/e0;

    move-result-object v0

    iput-object v0, p0, Ln2/b;->b:Lc2/e0;

    .line 3
    invoke-interface {p1}, Lc2/n;->o()V

    return-void
.end method

.method public h(Lc2/m;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ln2/d;->a(Lc2/m;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
