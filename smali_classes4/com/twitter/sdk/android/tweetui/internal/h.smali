.class public final synthetic Lcom/twitter/sdk/android/tweetui/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetui/internal/i;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/h;->a:Lcom/twitter/sdk/android/tweetui/internal/i;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/h;->a:Lcom/twitter/sdk/android/tweetui/internal/i;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/i;->a(Lcom/twitter/sdk/android/tweetui/internal/i;Landroid/animation/ValueAnimator;)V

    return-void
.end method
