.class Lcom/google/android/exoplayer2/ui/x$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/x;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/x;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->p(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->p(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->q(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->q(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->r(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->r(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/x;->o(Lcom/google/android/exoplayer2/ui/x;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->n(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->o(Lcom/google/android/exoplayer2/ui/x;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$b;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->n(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->t(J)V

    :cond_4
    return-void
.end method
