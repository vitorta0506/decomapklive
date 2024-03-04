.class Lhd/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhd/c;->h(IIJLhd/c$c;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhd/c$c;

.field final synthetic b:Lhd/c;


# direct methods
.method constructor <init>(Lhd/c;Lhd/c$c;)V
    .locals 0

    iput-object p1, p0, Lhd/c$a;->b:Lhd/c;

    iput-object p2, p0, Lhd/c$a;->a:Lhd/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lhd/c$a;->b:Lhd/c;

    iget-object v1, p0, Lhd/c$a;->a:Lhd/c$c;

    invoke-static {v0, p1, v1}, Lhd/c;->f(Lhd/c;Landroid/animation/ValueAnimator;Lhd/c$c;)V

    return-void
.end method
