.class Lcom/lcodecore/tkrefreshlayout/footer/LoadingView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/RotateDrawable;

.field final synthetic b:Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;Landroid/graphics/drawable/RotateDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView$a;->b:Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView$a;->a:Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView$a;->a:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    return-void
.end method
