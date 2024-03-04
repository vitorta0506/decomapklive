.class Lcom/scwang/smartrefresh/header/waveswipe/WaveView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/waveswipe/WaveView;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$b;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$b;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->i:F

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$b;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
