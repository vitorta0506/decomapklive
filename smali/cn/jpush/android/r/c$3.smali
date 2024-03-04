.class Lcn/jpush/android/r/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/r/c;->a(FFLandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcn/jpush/android/r/c;


# direct methods
.method constructor <init>(Lcn/jpush/android/r/c;FFFF)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/r/c$3;->e:Lcn/jpush/android/r/c;

    iput p2, p0, Lcn/jpush/android/r/c$3;->a:F

    iput p3, p0, Lcn/jpush/android/r/c$3;->b:F

    iput p4, p0, Lcn/jpush/android/r/c$3;->c:F

    iput p5, p0, Lcn/jpush/android/r/c$3;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcn/jpush/android/r/c$3;->a:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget v2, p0, Lcn/jpush/android/r/c$3;->b:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcn/jpush/android/r/c$3;->c:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v2, p0, Lcn/jpush/android/r/c$3;->d:F

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    iget-object p1, p0, Lcn/jpush/android/r/c$3;->e:Lcn/jpush/android/r/c;

    invoke-static {p1}, Lcn/jpush/android/r/c;->b(Lcn/jpush/android/r/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/jpush/android/r/c$3;->e:Lcn/jpush/android/r/c;

    invoke-virtual {p1, v0}, Lcn/jpush/android/r/c;->a(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/jpush/android/r/c$3;->e:Lcn/jpush/android/r/c;

    invoke-virtual {p1, v0}, Lcn/jpush/android/r/c;->b(F)V

    :goto_0
    iget-object p1, p0, Lcn/jpush/android/r/c$3;->e:Lcn/jpush/android/r/c;

    invoke-virtual {p1, v1}, Lcn/jpush/android/r/c;->c(F)V

    return-void
.end method
