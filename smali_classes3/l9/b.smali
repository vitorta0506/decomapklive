.class public Ll9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:[F

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Ll9/b;-><init>(FFFFI)V

    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ll9/b;->b:F

    .line 4
    iput p2, p0, Ll9/b;->c:F

    .line 5
    iput p3, p0, Ll9/b;->d:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Ll9/b;->e:F

    .line 7
    iput p1, p0, Ll9/b;->f:F

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 8
    fill-array-data p1, :array_0

    iput-object p1, p0, Ll9/b;->i:[F

    .line 9
    iput p4, p0, Ll9/b;->g:F

    .line 10
    iput p5, p0, Ll9/b;->a:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v5, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Ll9/b;-><init>(FFFFI)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    iget-object v4, p0, Ll9/b;->i:[F

    aget v4, v4, v3

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget v0, v1, v2

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v1, v1, v4

    .line 2
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Ll9/b;->e:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Ll9/b;->f:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Ll9/b;->b:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Ll9/b;->c:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Ll9/b;->d:F

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ll9/b;->a:I

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Ll9/b;->g:F

    mul-float v0, v0, v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ll9/b;->j:Landroid/view/View;

    return-object v0
.end method

.method public j(F)V
    .locals 2

    .line 1
    iput p1, p0, Ll9/b;->h:F

    .line 2
    iget-object v0, p0, Ll9/b;->i:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public k([F)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Ll9/b;->i:[F

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public l(F)V
    .locals 0

    iput p1, p0, Ll9/b;->e:F

    return-void
.end method

.method public m(F)V
    .locals 0

    iput p1, p0, Ll9/b;->f:F

    return-void
.end method

.method public n(F)V
    .locals 0

    iput p1, p0, Ll9/b;->b:F

    return-void
.end method

.method public o(F)V
    .locals 0

    iput p1, p0, Ll9/b;->c:F

    return-void
.end method

.method public p(F)V
    .locals 0

    iput p1, p0, Ll9/b;->d:F

    return-void
.end method

.method public q(F)V
    .locals 0

    iput p1, p0, Ll9/b;->g:F

    return-void
.end method

.method public r(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ll9/b;->j:Landroid/view/View;

    return-void
.end method
