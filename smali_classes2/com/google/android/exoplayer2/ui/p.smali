.class public final synthetic Lcom/google/android/exoplayer2/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/x;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/p;->a:Lcom/google/android/exoplayer2/ui/x;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/p;->a:Lcom/google/android/exoplayer2/ui/x;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/x;->i(Lcom/google/android/exoplayer2/ui/x;Landroid/animation/ValueAnimator;)V

    return-void
.end method
