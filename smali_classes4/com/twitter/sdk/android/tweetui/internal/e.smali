.class public final synthetic Lcom/twitter/sdk/android/tweetui/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/e;->a:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/e;->b:F

    iput p3, p0, Lcom/twitter/sdk/android/tweetui/internal/e;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/e;->a:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/e;->b:F

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/e;->c:F

    invoke-static {v0, v1, v2, p1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->b(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
