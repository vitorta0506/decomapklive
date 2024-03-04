.class Lcom/scwang/smartrefresh/header/WaveSwipeHeader$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->c(Lwd/j;Z)I
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

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$c;->a:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$c;->a:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {p1}, Lrd/a;->stop()V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$c;->a:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lrd/a;->setAlpha(I)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$c;->a:Lcom/scwang/smartrefresh/header/WaveSwipeHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->i()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
