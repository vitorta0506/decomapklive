.class Lhd/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhd/i;->p(IIJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhd/i;


# direct methods
.method constructor <init>(Lhd/i;)V
    .locals 0

    iput-object p1, p0, Lhd/i$a;->a:Lhd/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lhd/i$a;->a:Lhd/i;

    invoke-static {v0, p1}, Lhd/i;->o(Lhd/i;Landroid/animation/ValueAnimator;)V

    return-void
.end method
