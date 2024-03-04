.class Lcom/scwang/smartrefresh/header/WaveSwipeHeader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->a(Lwd/j;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$a;->a:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$a;->a:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    iget-object v0, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 2
    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 3
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->getCurrentCircleCenterY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
