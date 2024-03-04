.class Lrd/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrd/a$c;

.field final synthetic b:Lrd/a;


# direct methods
.method constructor <init>(Lrd/a;Lrd/a$c;)V
    .locals 0

    iput-object p1, p0, Lrd/a$b;->b:Lrd/a;

    iput-object p2, p0, Lrd/a$b;->a:Lrd/a$c;

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
    iget-object v0, p0, Lrd/a$b;->a:Lrd/a$c;

    invoke-virtual {v0}, Lrd/a$c;->j()V

    .line 2
    iget-object v0, p0, Lrd/a$b;->a:Lrd/a$c;

    invoke-virtual {v0}, Lrd/a$c;->f()V

    .line 3
    iget-object v0, p0, Lrd/a$b;->a:Lrd/a$c;

    iget v1, v0, Lrd/a$c;->e:F

    iput v1, v0, Lrd/a$c;->d:F

    .line 4
    iget-object v0, p0, Lrd/a$b;->b:Lrd/a;

    iget-boolean v1, v0, Lrd/a;->i:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lrd/a;->i:Z

    const-wide/16 v2, 0x534

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    iget-object p1, p0, Lrd/a$b;->b:Lrd/a;

    invoke-virtual {p1, v1}, Lrd/a;->l(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Lrd/a;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr p1, v1

    iput p1, v0, Lrd/a;->f:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lrd/a$b;->b:Lrd/a;

    const/4 v0, 0x0

    iput v0, p1, Lrd/a;->f:F

    return-void
.end method
