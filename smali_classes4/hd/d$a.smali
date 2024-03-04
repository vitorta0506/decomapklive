.class Lhd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhd/d;->g()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhd/d;


# direct methods
.method constructor <init>(Lhd/d;)V
    .locals 0

    iput-object p1, p0, Lhd/d$a;->a:Lhd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lhd/d$a;->a:Lhd/d;

    invoke-static {v0, p1}, Lhd/d;->m(Lhd/d;Landroid/animation/ValueAnimator;)V

    return-void
.end method
