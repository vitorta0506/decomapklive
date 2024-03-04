.class Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;F)F

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->g(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;F)F

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->k(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;F)F

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->i(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ll9/a;->m(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->m(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ll9/a;->o([F)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->n(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ll9/a;->n([F)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v0

    invoke-virtual {v0}, Ll9/a;->b()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->o(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Lk9/b;

    move-result-object v3

    invoke-virtual {v3}, Lk9/b;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 10
    new-instance v3, Ll9/b;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->o(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Lk9/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lk9/b;->getPopularity(I)I

    move-result v4

    invoke-direct {v3, v4}, Ll9/b;-><init>(I)V

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->o(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Lk9/b;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v4, v5, v2, v6}, Lk9/b;->getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v3, v4}, Ll9/b;->r(Landroid/view/View;)V

    .line 13
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Ll9/a;->a(Ll9/b;)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v3, v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->p(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;Landroid/view/View;I)V

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 16
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 17
    check-cast v3, Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ll9/a;->c(Z)V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Ll9/a;->k(F)V

    .line 22
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->f(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Ll9/a;->l(F)V

    .line 23
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;

    move-result-object v2

    invoke-virtual {v2}, Ll9/a;->r()V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7528\u65f6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoulPlanetsView"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
