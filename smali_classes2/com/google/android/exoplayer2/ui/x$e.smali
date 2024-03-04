.class Lcom/google/android/exoplayer2/ui/x$e;
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
.field final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field final synthetic b:Lcom/google/android/exoplayer2/ui/x;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/x;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/x$e;->b:Lcom/google/android/exoplayer2/ui/x;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/x$e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$e;->b:Lcom/google/android/exoplayer2/ui/x;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/x;->s(Lcom/google/android/exoplayer2/ui/x;I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$e;->b:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/x;->t(Lcom/google/android/exoplayer2/ui/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/x$e;->b:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/x;->v(Lcom/google/android/exoplayer2/ui/x;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$e;->b:Lcom/google/android/exoplayer2/ui/x;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/x;->u(Lcom/google/android/exoplayer2/ui/x;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/x$e;->b:Lcom/google/android/exoplayer2/ui/x;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/x;->s(Lcom/google/android/exoplayer2/ui/x;I)V

    return-void
.end method
