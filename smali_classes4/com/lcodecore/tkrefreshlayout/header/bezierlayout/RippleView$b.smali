.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;->a()V

    :cond_0
    return-void
.end method
