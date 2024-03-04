.class Lcom/scwang/smartrefresh/header/waveswipe/WaveView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->i()V
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

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$c;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$c;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->g()V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$c;->a:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->k:Z

    return-void
.end method
