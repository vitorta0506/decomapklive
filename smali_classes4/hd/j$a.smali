.class Lhd/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhd/j;->i(IIJZLgd/h;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgd/h;

.field final synthetic b:Z

.field final synthetic c:Lhd/j;


# direct methods
.method constructor <init>(Lhd/j;Lgd/h;Z)V
    .locals 0

    iput-object p1, p0, Lhd/j$a;->c:Lhd/j;

    iput-object p2, p0, Lhd/j$a;->a:Lgd/h;

    iput-boolean p3, p0, Lhd/j$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lhd/j$a;->c:Lhd/j;

    iget-object v1, p0, Lhd/j$a;->a:Lgd/h;

    iget-boolean v2, p0, Lhd/j$a;->b:Z

    invoke-static {v0, v1, p1, v2}, Lhd/j;->f(Lhd/j;Lgd/h;Landroid/animation/ValueAnimator;Z)V

    return-void
.end method
