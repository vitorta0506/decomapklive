.class Lhd/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhd/g;->g()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhd/g;


# direct methods
.method constructor <init>(Lhd/g;)V
    .locals 0

    iput-object p1, p0, Lhd/g$a;->a:Lhd/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lhd/g$a;->a:Lhd/g;

    invoke-static {v0, p1}, Lhd/g;->f(Lhd/g;Landroid/animation/ValueAnimator;)V

    return-void
.end method
