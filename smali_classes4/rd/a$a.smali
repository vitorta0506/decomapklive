.class Lrd/a$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrd/a$c;

.field final synthetic b:Lrd/a;


# direct methods
.method constructor <init>(Lrd/a;Lrd/a$c;)V
    .locals 0

    iput-object p1, p0, Lrd/a$a;->b:Lrd/a;

    iput-object p2, p0, Lrd/a$a;->a:Lrd/a$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    .line 1
    iget-object p2, p0, Lrd/a$a;->b:Lrd/a;

    iget-boolean v0, p2, Lrd/a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrd/a$a;->a:Lrd/a$c;

    invoke-virtual {p2, p1, v0}, Lrd/a;->a(FLrd/a$c;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lrd/a$a;->a:Lrd/a$c;

    invoke-virtual {p2, v0}, Lrd/a;->c(Lrd/a$c;)F

    move-result p2

    .line 4
    iget-object v0, p0, Lrd/a$a;->a:Lrd/a$c;

    iget v1, v0, Lrd/a$c;->l:F

    .line 5
    iget v2, v0, Lrd/a$c;->k:F

    .line 6
    iget v3, v0, Lrd/a$c;->m:F

    .line 7
    iget-object v4, p0, Lrd/a$a;->b:Lrd/a;

    invoke-virtual {v4, p1, v0}, Lrd/a;->m(FLrd/a$c;)V

    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_1

    div-float v5, p1, v4

    .line 8
    iget-object v6, p0, Lrd/a$a;->a:Lrd/a$c;

    sub-float v7, v0, p2

    sget-object v8, Lrd/a;->k:Landroid/view/animation/Interpolator;

    .line 9
    invoke-interface {v8, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v7, v7, v5

    add-float/2addr v2, v7

    iput v2, v6, Lrd/a$c;->d:F

    :cond_1
    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    sub-float/2addr v0, p2

    sub-float p2, p1, v4

    div-float/2addr p2, v4

    .line 10
    iget-object v2, p0, Lrd/a$a;->a:Lrd/a$c;

    sget-object v4, Lrd/a;->k:Landroid/view/animation/Interpolator;

    .line 11
    invoke-interface {v4, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float v0, v0, p2

    add-float/2addr v1, v0

    iput v1, v2, Lrd/a$c;->e:F

    .line 12
    :cond_2
    iget-object p2, p0, Lrd/a$a;->b:Lrd/a;

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    invoke-virtual {p2, v3}, Lrd/a;->g(F)V

    const/high16 p2, 0x43580000    # 216.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x44870000    # 1080.0f

    .line 13
    iget-object v0, p0, Lrd/a$a;->b:Lrd/a;

    iget v1, v0, Lrd/a;->f:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    .line 14
    invoke-virtual {v0, p1}, Lrd/a;->h(F)V

    :goto_0
    return-void
.end method
