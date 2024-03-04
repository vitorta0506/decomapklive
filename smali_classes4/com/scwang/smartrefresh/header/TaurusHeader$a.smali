.class Lcom/scwang/smartrefresh/header/TaurusHeader$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/TaurusHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/scwang/smartrefresh/header/TaurusHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/TaurusHeader;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader$a;->b:Lcom/scwang/smartrefresh/header/TaurusHeader;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader$a;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p2    # Landroid/view/animation/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader$a;->b:Lcom/scwang/smartrefresh/header/TaurusHeader;

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float p1, p1, v0

    iput p1, p2, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
