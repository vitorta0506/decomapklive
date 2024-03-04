.class public Ll9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/a$b;
    }
.end annotation


# static fields
.field private static final s:[F

.field private static final t:[F


# instance fields
.field private a:F

.field private b:F

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll9/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[F

.field private f:[F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Ll9/a;->s:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Ll9/a;->t:[F

    return-void

    :array_0
    .array-data 4
        0x3f62d0e5    # 0.886f
        0x3f39999a    # 0.725f
        0x3e408312    # 0.188f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Ll9/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Ll9/a;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll9/b;",
            ">;I)V"
        }
    .end annotation

    .line 3
    sget-object v0, Ll9/a;->s:[F

    sget-object v1, Ll9/a;->t:[F

    invoke-direct {p0, p1, p2, v0, v1}, Ll9/a;-><init>(Ljava/util/List;I[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I[F[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll9/b;",
            ">;I[F[F)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Ll9/a;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 6
    iput v0, p0, Ll9/a;->b:F

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ll9/a;->m:F

    .line 8
    iput v0, p0, Ll9/a;->n:F

    .line 9
    iput v0, p0, Ll9/a;->o:F

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ll9/a;->r:Z

    .line 11
    iput-object p1, p0, Ll9/a;->c:Ljava/util/List;

    .line 12
    iput p2, p0, Ll9/a;->d:I

    .line 13
    iput-object p3, p0, Ll9/a;->e:[F

    .line 14
    iput-object p4, p0, Ll9/a;->f:[F

    return-void
.end method

.method private e(F)[F
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 1
    iget-object v3, p0, Ll9/a;->f:[F

    aget v4, v3, v1

    mul-float v4, v4, p1

    sub-float/2addr v2, p1

    iget-object v5, p0, Ll9/a;->e:[F

    aget v1, v5, v1

    mul-float v1, v1, v2

    add-float/2addr v4, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    .line 2
    aget v4, v3, v1

    mul-float v4, v4, p1

    aget v1, v5, v1

    mul-float v1, v1, v2

    add-float/2addr v4, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    .line 3
    aget v3, v3, v1

    mul-float p1, p1, v3

    aget v1, v5, v1

    mul-float v2, v2, v1

    add-float/2addr p1, v2

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object v0
.end method

.method private f(Ll9/b;)F
    .locals 3

    .line 1
    invoke-virtual {p1}, Ll9/b;->g()I

    move-result p1

    .line 2
    iget v0, p0, Ll9/a;->p:I

    iget v1, p0, Ll9/a;->q:I

    if-ne v0, v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float v2, v0

    sub-float/2addr p1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    :goto_0
    return p1
.end method

.method private h(Ll9/b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ll9/a;->f(Ll9/b;)F

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Ll9/a;->e(F)[F

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ll9/b;->k([F)V

    return-void
.end method

.method private i(Ll9/b;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    .line 2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    .line 3
    iget v4, p0, Ll9/a;->d:I

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Ll9/b;->n(F)V

    .line 4
    iget v4, p0, Ll9/a;->d:I

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v4, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v4, v4, v2

    double-to-int v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Ll9/b;->o(F)V

    .line 5
    iget v2, p0, Ll9/a;->d:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    double-to-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Ll9/b;->p(F)V

    return-void
.end method

.method private j(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    if-eqz p1, :cond_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v1

    mul-double v8, v8, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    int-to-double v6, v0

    div-double/2addr v8, v6

    add-double/2addr v8, v4

    .line 2
    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    mul-double v6, v6, v2

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double v4, v4, v2

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v6

    .line 6
    :goto_1
    iget-object v6, p0, Ll9/a;->c:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll9/b;

    iget v8, p0, Ll9/a;->d:I

    int-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    double-to-float v8, v8

    invoke-virtual {v6, v8}, Ll9/b;->n(F)V

    .line 7
    iget-object v6, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll9/b;

    iget v8, p0, Ll9/a;->d:I

    int-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v8, v8, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v8, v8, v2

    double-to-float v2, v8

    invoke-virtual {v6, v2}, Ll9/b;->o(F)V

    .line 8
    iget-object v2, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll9/b;

    iget v3, p0, Ll9/a;->d:I

    int-to-double v6, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v6, v6, v3

    double-to-float v3, v6

    invoke-virtual {v2, v3}, Ll9/b;->p(F)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private p(FFF)V
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p1, v4

    iput p1, p0, Ll9/a;->g:F

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Ll9/a;->h:F

    float-to-double p1, p2

    mul-double p1, p1, v2

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ll9/a;->i:F

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Ll9/a;->j:F

    float-to-double p1, p3

    mul-double p1, p1, v2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p3, v0

    iput p3, p0, Ll9/a;->k:F

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Ll9/a;->l:F

    return-void
.end method

.method private s()V
    .locals 10

    .line 1
    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll9/b;

    .line 3
    invoke-virtual {v2}, Ll9/b;->d()F

    move-result v3

    .line 4
    invoke-virtual {v2}, Ll9/b;->e()F

    move-result v4

    iget v5, p0, Ll9/a;->h:F

    mul-float v4, v4, v5

    invoke-virtual {v2}, Ll9/b;->f()F

    move-result v5

    iget v6, p0, Ll9/a;->g:F

    neg-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 5
    invoke-virtual {v2}, Ll9/b;->e()F

    move-result v5

    iget v6, p0, Ll9/a;->g:F

    mul-float v5, v5, v6

    invoke-virtual {v2}, Ll9/b;->f()F

    move-result v6

    iget v7, p0, Ll9/a;->h:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    .line 6
    iget v6, p0, Ll9/a;->j:F

    mul-float v7, v3, v6

    iget v8, p0, Ll9/a;->i:F

    mul-float v9, v5, v8

    add-float/2addr v7, v9

    neg-float v8, v8

    mul-float v3, v3, v8

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    .line 7
    iget v5, p0, Ll9/a;->l:F

    mul-float v6, v7, v5

    iget v8, p0, Ll9/a;->k:F

    neg-float v9, v8

    mul-float v9, v9, v4

    add-float/2addr v6, v9

    mul-float v7, v7, v8

    mul-float v4, v4, v5

    add-float/2addr v7, v4

    .line 8
    invoke-virtual {v2, v6}, Ll9/b;->n(F)V

    .line 9
    invoke-virtual {v2, v7}, Ll9/b;->o(F)V

    .line 10
    invoke-virtual {v2, v3}, Ll9/b;->p(F)V

    .line 11
    iget v4, p0, Ll9/a;->d:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    div-float/2addr v4, v3

    .line 12
    invoke-virtual {v2, v6}, Ll9/b;->l(F)V

    .line 13
    invoke-virtual {v2, v7}, Ll9/b;->m(F)V

    .line 14
    invoke-virtual {v2, v4}, Ll9/b;->q(F)V

    .line 15
    iget v4, p0, Ll9/a;->a:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Ll9/a;->a:F

    .line 16
    iget v4, p0, Ll9/a;->b:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Ll9/a;->b:F

    sub-float/2addr v3, v4

    .line 17
    iget v5, p0, Ll9/a;->a:F

    sub-float/2addr v5, v4

    div-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 18
    invoke-virtual {v2, v4}, Ll9/b;->j(F)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ll9/a;->q()V

    return-void
.end method


# virtual methods
.method public a(Ll9/b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ll9/a;->h(Ll9/b;)V

    .line 2
    invoke-direct {p0, p1}, Ll9/a;->i(Ll9/b;)V

    .line 3
    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Ll9/a;->r:Z

    .line 2
    invoke-direct {p0, p1}, Ll9/a;->j(Z)V

    .line 3
    iget p1, p0, Ll9/a;->n:F

    iget v0, p0, Ll9/a;->o:F

    iget v1, p0, Ll9/a;->m:F

    invoke-direct {p0, p1, v0, v1}, Ll9/a;->p(FFF)V

    .line 4
    invoke-direct {p0}, Ll9/a;->s()V

    const/16 p1, 0x270f

    .line 5
    iput p1, p0, Ll9/a;->p:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Ll9/a;->q:I

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll9/b;

    invoke-virtual {v1}, Ll9/b;->g()I

    move-result v1

    .line 9
    iget v2, p0, Ll9/a;->q:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Ll9/a;->q:I

    .line 10
    iget v2, p0, Ll9/a;->p:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ll9/a;->p:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    :goto_1
    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 12
    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll9/b;

    invoke-direct {p0, v0}, Ll9/a;->h(Ll9/b;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public d(I)Ll9/b;
    .locals 1

    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll9/b;

    return-object p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll9/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public k(F)V
    .locals 0

    iput p1, p0, Ll9/a;->n:F

    return-void
.end method

.method public l(F)V
    .locals 0

    iput p1, p0, Ll9/a;->o:F

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Ll9/a;->d:I

    return-void
.end method

.method public n([F)V
    .locals 0

    iput-object p1, p0, Ll9/a;->f:[F

    return-void
.end method

.method public o([F)V
    .locals 0

    iput-object p1, p0, Ll9/a;->e:[F

    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Ll9/a;->c:Ljava/util/List;

    new-instance v1, Ll9/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ll9/a$b;-><init>(Ll9/a$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public r()V
    .locals 5

    .line 1
    iget v0, p0, Ll9/a;->n:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    iget v0, p0, Ll9/a;->o:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Ll9/a;->n:F

    iget v1, p0, Ll9/a;->o:F

    iget v2, p0, Ll9/a;->m:F

    invoke-direct {p0, v0, v1, v2}, Ll9/a;->p(FFF)V

    .line 3
    invoke-direct {p0}, Ll9/a;->s()V

    :cond_1
    return-void
.end method
