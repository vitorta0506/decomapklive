.class public Lc2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lc2/a$c;->a:J

    .line 3
    iput-wide p3, p0, Lc2/a$c;->b:J

    .line 4
    iput-wide p5, p0, Lc2/a$c;->d:J

    .line 5
    iput-wide p7, p0, Lc2/a$c;->e:J

    .line 6
    iput-wide p9, p0, Lc2/a$c;->f:J

    .line 7
    iput-wide p11, p0, Lc2/a$c;->g:J

    .line 8
    iput-wide p13, p0, Lc2/a$c;->c:J

    .line 9
    invoke-static/range {p3 .. p14}, Lc2/a$c;->h(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lc2/a$c;->h:J

    return-void
.end method

.method static synthetic a(Lc2/a$c;)J
    .locals 2

    invoke-direct {p0}, Lc2/a$c;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lc2/a$c;)J
    .locals 2

    invoke-direct {p0}, Lc2/a$c;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lc2/a$c;)J
    .locals 2

    invoke-direct {p0}, Lc2/a$c;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lc2/a$c;)J
    .locals 2

    invoke-direct {p0}, Lc2/a$c;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lc2/a$c;)J
    .locals 2

    invoke-direct {p0}, Lc2/a$c;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lc2/a$c;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lc2/a$c;->o(JJ)V

    return-void
.end method

.method static synthetic g(Lc2/a$c;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lc2/a$c;->p(JJ)V

    return-void
.end method

.method protected static h(JJJJJJ)J
    .locals 7

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_1

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, p0, p2

    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    const-wide/16 v4, 0x14

    .line 1
    div-long v4, v2, v4

    add-long/2addr v2, p6

    sub-long v2, v2, p10

    sub-long/2addr v2, v4

    sub-long v0, p8, v0

    move-wide p0, v2

    move-wide p2, p6

    move-wide p4, v0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/util/l0;->q(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide p6
.end method

.method private i()J
    .locals 2

    iget-wide v0, p0, Lc2/a$c;->g:J

    return-wide v0
.end method

.method private j()J
    .locals 2

    iget-wide v0, p0, Lc2/a$c;->f:J

    return-wide v0
.end method

.method private k()J
    .locals 2

    iget-wide v0, p0, Lc2/a$c;->h:J

    return-wide v0
.end method

.method private l()J
    .locals 2

    iget-wide v0, p0, Lc2/a$c;->a:J

    return-wide v0
.end method

.method private m()J
    .locals 2

    iget-wide v0, p0, Lc2/a$c;->b:J

    return-wide v0
.end method

.method private n()V
    .locals 12

    .line 1
    iget-wide v0, p0, Lc2/a$c;->b:J

    iget-wide v2, p0, Lc2/a$c;->d:J

    iget-wide v4, p0, Lc2/a$c;->e:J

    iget-wide v6, p0, Lc2/a$c;->f:J

    iget-wide v8, p0, Lc2/a$c;->g:J

    iget-wide v10, p0, Lc2/a$c;->c:J

    .line 2
    invoke-static/range {v0 .. v11}, Lc2/a$c;->h(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lc2/a$c;->h:J

    return-void
.end method

.method private o(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc2/a$c;->e:J

    .line 2
    iput-wide p3, p0, Lc2/a$c;->g:J

    .line 3
    invoke-direct {p0}, Lc2/a$c;->n()V

    return-void
.end method

.method private p(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc2/a$c;->d:J

    .line 2
    iput-wide p3, p0, Lc2/a$c;->f:J

    .line 3
    invoke-direct {p0}, Lc2/a$c;->n()V

    return-void
.end method
