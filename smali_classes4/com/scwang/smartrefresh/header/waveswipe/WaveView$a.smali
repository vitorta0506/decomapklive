.class Lcom/scwang/smartrefresh/header/waveswipe/WaveView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/waveswipe/WaveView;
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

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$a;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$a;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
