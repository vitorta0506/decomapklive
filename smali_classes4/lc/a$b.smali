.class Llc/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llc/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llc/a$d;

.field final synthetic b:Llc/a;


# direct methods
.method constructor <init>(Llc/a;Llc/a$d;)V
    .locals 0

    iput-object p1, p0, Llc/a$b;->b:Llc/a;

    iput-object p2, p0, Llc/a$b;->a:Llc/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llc/a$b;->a:Llc/a$d;

    invoke-virtual {v0}, Llc/a$d;->F()V

    .line 2
    iget-object v0, p0, Llc/a$b;->a:Llc/a$d;

    invoke-virtual {v0}, Llc/a$d;->n()V

    .line 3
    iget-object v0, p0, Llc/a$b;->a:Llc/a$d;

    invoke-virtual {v0}, Llc/a$d;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Llc/a$d;->D(F)V

    .line 4
    iget-object v0, p0, Llc/a$b;->b:Llc/a;

    iget-boolean v1, v0, Llc/a;->k:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Llc/a;->k:Z

    const-wide/16 v2, 0x534

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    iget-object p1, p0, Llc/a$b;->a:Llc/a$d;

    invoke-virtual {p1, v1}, Llc/a$d;->C(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Llc/a;->e(Llc/a;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr p1, v1

    invoke-static {v0, p1}, Llc/a;->f(Llc/a;F)F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Llc/a$b;->b:Llc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llc/a;->f(Llc/a;F)F

    return-void
.end method
