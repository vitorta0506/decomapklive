.class Lcom/google/android/exoplayer2/ui/x$i;
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

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/x$i;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$i;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->w(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$i;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->w(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$i;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->x(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$i;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->x(Lcom/google/android/exoplayer2/ui/x;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
