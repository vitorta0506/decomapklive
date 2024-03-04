.class public final Lj2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/l;


# static fields
.field public static final u:Lc2/r;

.field private static final v:Ls2/b$a;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Lcom/google/android/exoplayer2/util/b0;

.field private final d:Lcom/google/android/exoplayer2/audio/b0$a;

.field private final e:Lc2/x;

.field private final f:Lc2/y;

.field private final g:Lc2/e0;

.field private h:Lc2/n;

.field private i:Lc2/e0;

.field private j:Lc2/e0;

.field private k:I

.field private l:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:J

.field private n:J

.field private o:J

.field private p:I

.field private q:Lj2/g;

.field private r:Z

.field private s:Z

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lj2/d;->b:Lj2/d;

    sput-object v0, Lj2/f;->u:Lc2/r;

    .line 2
    sget-object v0, Lj2/e;->a:Lj2/e;

    sput-object v0, Lj2/f;->v:Ls2/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lj2/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lj2/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 4
    :cond_0
    iput p1, p0, Lj2/f;->a:I

    .line 5
    iput-wide p2, p0, Lj2/f;->b:J

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/b0;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    iput-object p1, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/b0$a;-><init>()V

    iput-object p1, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    .line 8
    new-instance p1, Lc2/x;

    invoke-direct {p1}, Lc2/x;-><init>()V

    iput-object p1, p0, Lj2/f;->e:Lc2/x;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lj2/f;->m:J

    .line 10
    new-instance p1, Lc2/y;

    invoke-direct {p1}, Lc2/y;-><init>()V

    iput-object p1, p0, Lj2/f;->f:Lc2/y;

    .line 11
    new-instance p1, Lc2/k;

    invoke-direct {p1}, Lc2/k;-><init>()V

    iput-object p1, p0, Lj2/f;->g:Lc2/e0;

    .line 12
    iput-object p1, p0, Lj2/f;->j:Lc2/e0;

    return-void
.end method

.method public static synthetic c()[Lc2/l;
    .locals 1

    invoke-static {}, Lj2/f;->o()[Lc2/l;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(IIIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj2/f;->p(IIIII)Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj2/f;->i:Lc2/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lj2/f;->h:Lc2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private g(Lc2/m;)Lj2/g;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lj2/f;->r(Lc2/m;)Lj2/g;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lj2/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lj2/f;->q(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lj2/c;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lj2/f;->r:Z

    if-eqz v2, :cond_0

    .line 4
    new-instance p1, Lj2/g$a;

    invoke-direct {p1}, Lj2/g$a;-><init>()V

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lj2/f;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lc2/b0;->i()J

    move-result-wide v2

    .line 7
    invoke-interface {v1}, Lj2/g;->d()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lc2/b0;->i()J

    move-result-wide v2

    .line 9
    invoke-interface {v0}, Lj2/g;->d()J

    move-result-wide v0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lj2/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v0}, Lj2/f;->l(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v0

    move-wide v5, v0

    move-wide v9, v2

    .line 11
    :goto_1
    new-instance v0, Lj2/b;

    .line 12
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lj2/b;-><init>(JJJ)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0}, Lc2/b0;->e()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lj2/f;->a:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    .line 14
    :cond_6
    iget v0, p0, Lj2/f;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 15
    :goto_3
    invoke-direct {p0, p1, v1}, Lj2/f;->k(Lc2/m;Z)Lj2/g;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private i(J)J
    .locals 4

    iget-wide v0, p0, Lj2/f;->m:J

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    iget-object v2, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private k(Lc2/m;Z)Lj2/g;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lc2/m;->m([BII)V

    .line 2
    iget-object v0, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 3
    iget-object v0, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget-object v1, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/b0$a;->a(I)Z

    .line 4
    new-instance v0, Lj2/a;

    .line 5
    invoke-interface {p1}, Lc2/m;->a()J

    move-result-wide v3

    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lj2/a;-><init>(JJLcom/google/android/exoplayer2/audio/b0$a;Z)V

    return-object v0
.end method

.method private static l(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 5
    .param p0    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v4, "TLEN"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p0, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/l0;->w0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static m(Lcom/google/android/exoplayer2/util/b0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->f()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->f()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static n(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic o()[Lc2/l;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lc2/l;

    new-instance v1, Lj2/f;

    invoke-direct {v1}, Lj2/f;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static synthetic p(IIIII)Z
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static q(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lj2/c;
    .locals 4
    .param p0    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {p0}, Lj2/f;->l(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Lj2/c;->a(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Lj2/c;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private r(Lc2/m;)Lj2/g;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/google/android/exoplayer2/util/b0;

    iget-object v0, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    .line 2
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    iget-object v1, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lc2/m;->m([BII)V

    .line 3
    iget-object v0, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v0, Lcom/google/android/exoplayer2/audio/b0$a;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_0

    .line 4
    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->e:I

    if-eq v0, v2, :cond_1

    const/16 v3, 0x24

    const/16 v7, 0x24

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->e:I

    if-eq v0, v2, :cond_2

    :cond_1
    const/16 v7, 0x15

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    const/16 v7, 0xd

    .line 6
    :goto_0
    invoke-static {v5, v7}, Lj2/f;->m(Lcom/google/android/exoplayer2/util/b0;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x56425249

    if-ne v8, v0, :cond_4

    .line 7
    invoke-interface {p1}, Lc2/m;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-static/range {v0 .. v5}, Lj2/h;->a(JJLcom/google/android/exoplayer2/audio/b0$a;Lcom/google/android/exoplayer2/util/b0;)Lj2/h;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    invoke-interface {p1, v1}, Lc2/m;->k(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1}, Lc2/m;->f()V

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    invoke-interface {p1}, Lc2/m;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-static/range {v0 .. v5}, Lj2/i;->a(JJLcom/google/android/exoplayer2/audio/b0$a;Lcom/google/android/exoplayer2/util/b0;)Lj2/i;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v1, p0, Lj2/f;->e:Lc2/x;

    invoke-virtual {v1}, Lc2/x;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 12
    invoke-interface {p1}, Lc2/m;->f()V

    add-int/lit16 v7, v7, 0x8d

    .line 13
    invoke-interface {p1, v7}, Lc2/m;->i(I)V

    .line 14
    iget-object v1, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lc2/m;->m([BII)V

    .line 15
    iget-object v1, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 16
    iget-object v1, p0, Lj2/f;->e:Lc2/x;

    iget-object v2, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/b0;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Lc2/x;->d(I)Z

    .line 17
    :cond_6
    iget-object v1, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    invoke-interface {p1, v1}, Lc2/m;->k(I)V

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0}, Lc2/b0;->e()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v8, v9, :cond_7

    .line 19
    invoke-direct {p0, p1, v6}, Lj2/f;->k(Lc2/m;Z)Lj2/g;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method private s(Lc2/m;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj2/f;->q:Lj2/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lj2/g;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lc2/m;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 6
    invoke-interface {p1, v0, v2, v3, v1}, Lc2/m;->d([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method private t(Lc2/m;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lj2/f;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lj2/f;->v(Lc2/m;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lj2/f;->q:Lj2/g;

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lj2/f;->g(Lc2/m;)Lj2/g;

    move-result-object v0

    iput-object v0, p0, Lj2/f;->q:Lj2/g;

    .line 5
    iget-object v1, p0, Lj2/f;->h:Lc2/n;

    invoke-interface {v1, v0}, Lc2/n;->l(Lc2/b0;)V

    .line 6
    iget-object v0, p0, Lj2/f;->j:Lc2/e0;

    new-instance v1, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    iget-object v2, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x1000

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->W(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget-object v2, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->e:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget-object v2, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->d:I

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget-object v2, p0, Lj2/f;->e:Lc2/x;

    iget v2, v2, Lc2/x;->a:I

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->N(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget-object v2, p0, Lj2/f;->e:Lc2/x;

    iget v2, v2, Lc2/x;->b:I

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->O(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    .line 13
    iget v2, p0, Lj2/f;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lj2/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    .line 16
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lj2/f;->o:J

    goto :goto_2

    .line 17
    :cond_2
    iget-wide v0, p0, Lj2/f;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 18
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lj2/f;->o:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 20
    invoke-interface {p1, v0}, Lc2/m;->k(I)V

    .line 21
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lj2/f;->u(Lc2/m;)I

    move-result p1

    return p1
.end method

.method private u(Lc2/m;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lj2/f;->p:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-interface {p1}, Lc2/m;->f()V

    .line 3
    invoke-direct {p0, p1}, Lj2/f;->s(Lc2/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v0, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 5
    iget-object v0, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result v0

    .line 6
    iget v4, p0, Lj2/f;->k:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lj2/f;->n(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b0;->j(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/audio/b0$a;->a(I)Z

    .line 9
    iget-wide v4, p0, Lj2/f;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lj2/f;->q:Lj2/g;

    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lj2/g;->g(J)J

    move-result-wide v4

    iput-wide v4, p0, Lj2/f;->m:J

    .line 11
    iget-wide v4, p0, Lj2/f;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lj2/f;->q:Lj2/g;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lj2/g;->g(J)J

    move-result-wide v4

    .line 13
    iget-wide v6, p0, Lj2/f;->m:J

    iget-wide v8, p0, Lj2/f;->b:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lj2/f;->m:J

    .line 14
    :cond_2
    iget-object v0, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    iput v4, p0, Lj2/f;->p:I

    .line 15
    iget-object v4, p0, Lj2/f;->q:Lj2/g;

    instance-of v5, v4, Lj2/b;

    if-eqz v5, :cond_4

    .line 16
    check-cast v4, Lj2/b;

    .line 17
    iget-wide v5, p0, Lj2/f;->n:J

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->g:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 18
    invoke-direct {p0, v5, v6}, Lj2/f;->i(J)J

    move-result-wide v5

    .line 19
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    .line 20
    invoke-virtual {v4, v5, v6, v7, v8}, Lj2/b;->b(JJ)V

    .line 21
    iget-boolean v0, p0, Lj2/f;->s:Z

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lj2/f;->t:J

    invoke-virtual {v4, v5, v6}, Lj2/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    iput-boolean v3, p0, Lj2/f;->s:Z

    .line 23
    iget-object v0, p0, Lj2/f;->i:Lc2/e0;

    iput-object v0, p0, Lj2/f;->j:Lc2/e0;

    goto :goto_1

    .line 24
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lc2/m;->k(I)V

    .line 25
    iput v3, p0, Lj2/f;->k:I

    return v3

    .line 26
    :cond_4
    :goto_1
    iget-object v0, p0, Lj2/f;->j:Lc2/e0;

    iget v4, p0, Lj2/f;->p:I

    invoke-interface {v0, p1, v4, v1}, Lc2/e0;->b(Lj3/f;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    .line 27
    :cond_5
    iget v0, p0, Lj2/f;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lj2/f;->p:I

    if-lez v0, :cond_6

    return v3

    .line 28
    :cond_6
    iget-object v4, p0, Lj2/f;->j:Lc2/e0;

    iget-wide v0, p0, Lj2/f;->n:J

    .line 29
    invoke-direct {p0, v0, v1}, Lj2/f;->i(J)J

    move-result-wide v5

    const/4 v7, 0x1

    iget-object p1, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v8, p1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 30
    invoke-interface/range {v4 .. v10}, Lc2/e0;->c(JIIILc2/e0$a;)V

    .line 31
    iget-wide v0, p0, Lj2/f;->n:J

    iget-object p1, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/b0$a;->g:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lj2/f;->n:J

    .line 32
    iput v3, p0, Lj2/f;->p:I

    return v3
.end method

.method private v(Lc2/m;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 1
    :goto_0
    invoke-interface {p1}, Lc2/m;->f()V

    .line 2
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v1, v3

    if-nez v8, :cond_5

    .line 3
    iget v1, p0, Lj2/f;->a:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    move-object v1, v5

    goto :goto_2

    .line 4
    :cond_2
    sget-object v1, Lj2/f;->v:Ls2/b$a;

    .line 5
    :goto_2
    iget-object v2, p0, Lj2/f;->f:Lc2/y;

    invoke-virtual {v2, p1, v1}, Lc2/y;->a(Lc2/m;Ls2/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Lj2/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_3

    .line 6
    iget-object v2, p0, Lj2/f;->e:Lc2/x;

    invoke-virtual {v2, v1}, Lc2/x;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 7
    :cond_3
    invoke-interface {p1}, Lc2/m;->h()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_4

    .line 8
    invoke-interface {p1, v2}, Lc2/m;->k(I)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_4
    invoke-direct {p0, p1}, Lj2/f;->s(Lc2/m;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-lez v3, :cond_6

    goto :goto_6

    .line 10
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 11
    :cond_7
    iget-object v8, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 12
    iget-object v8, p0, Lj2/f;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result v8

    if-eqz v1, :cond_8

    int-to-long v9, v1

    .line 13
    invoke-static {v8, v9, v10}, Lj2/f;->n(IJ)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 14
    :cond_8
    invoke-static {v8}, Lcom/google/android/exoplayer2/audio/b0;->j(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_d

    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_a

    return v7

    :cond_a
    const-string p1, "Searched too many bytes."

    .line 15
    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 16
    invoke-interface {p1}, Lc2/m;->f()V

    add-int v3, v2, v1

    .line 17
    invoke-interface {p1, v3}, Lc2/m;->i(I)V

    goto :goto_5

    .line 18
    :cond_c
    invoke-interface {p1, v6}, Lc2/m;->k(I)V

    :goto_5
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_e

    .line 19
    iget-object v1, p0, Lj2/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/audio/b0$a;->a(I)Z

    move v1, v8

    goto :goto_8

    :cond_e
    const/4 v8, 0x4

    if-ne v3, v8, :cond_10

    :goto_6
    if-eqz p2, :cond_f

    add-int/2addr v2, v4

    .line 20
    invoke-interface {p1, v2}, Lc2/m;->k(I)V

    goto :goto_7

    .line 21
    :cond_f
    invoke-interface {p1}, Lc2/m;->f()V

    .line 22
    :goto_7
    iput v1, p0, Lj2/f;->k:I

    return v6

    :cond_10
    :goto_8
    add-int/lit8 v9, v9, -0x4

    .line 23
    invoke-interface {p1, v9}, Lc2/m;->i(I)V

    goto :goto_4
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lj2/f;->k:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lj2/f;->m:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lj2/f;->n:J

    .line 4
    iput p1, p0, Lj2/f;->p:I

    .line 5
    iput-wide p3, p0, Lj2/f;->t:J

    .line 6
    iget-object p1, p0, Lj2/f;->q:Lj2/g;

    instance-of p2, p1, Lj2/b;

    if-eqz p2, :cond_0

    check-cast p1, Lj2/b;

    invoke-virtual {p1, p3, p4}, Lj2/b;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lj2/f;->s:Z

    .line 8
    iget-object p1, p0, Lj2/f;->g:Lc2/e0;

    iput-object p1, p0, Lj2/f;->j:Lc2/e0;

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
    invoke-direct {p0}, Lj2/f;->e()V

    .line 2
    invoke-direct {p0, p1}, Lj2/f;->t(Lc2/m;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p2, p0, Lj2/f;->q:Lj2/g;

    instance-of p2, p2, Lj2/b;

    if-eqz p2, :cond_0

    .line 4
    iget-wide v0, p0, Lj2/f;->n:J

    invoke-direct {p0, v0, v1}, Lj2/f;->i(J)J

    move-result-wide v0

    .line 5
    iget-object p2, p0, Lj2/f;->q:Lj2/g;

    invoke-interface {p2}, Lc2/b0;->i()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lj2/f;->q:Lj2/g;

    check-cast p2, Lj2/b;

    invoke-virtual {p2, v0, v1}, Lj2/b;->f(J)V

    .line 7
    iget-object p2, p0, Lj2/f;->h:Lc2/n;

    iget-object v0, p0, Lj2/f;->q:Lj2/g;

    invoke-interface {p2, v0}, Lc2/n;->l(Lc2/b0;)V

    :cond_0
    return p1
.end method

.method public f(Lc2/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lj2/f;->h:Lc2/n;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lc2/n;->q(II)Lc2/e0;

    move-result-object p1

    iput-object p1, p0, Lj2/f;->i:Lc2/e0;

    .line 3
    iput-object p1, p0, Lj2/f;->j:Lc2/e0;

    .line 4
    iget-object p1, p0, Lj2/f;->h:Lc2/n;

    invoke-interface {p1}, Lc2/n;->o()V

    return-void
.end method

.method public h(Lc2/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lj2/f;->v(Lc2/m;Z)Z

    move-result p1

    return p1
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2/f;->r:Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
