.class Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/StoreHouseHeader;->c(Lwd/j;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/header/StoreHouseHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;->a:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const-wide/16 v0, 0xfa

    .line 2
    invoke-super {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;->a:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 2
    iput v1, p2, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->i:F

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;->a:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object p2, p2, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;->a:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object p2, p2, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltd/a;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;->a:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v0, v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->h:I

    invoke-virtual {p2, v0}, Ltd/a;->b(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
