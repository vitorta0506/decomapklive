.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->onFinish(Lkc/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkc/c;

.field final synthetic b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;Lkc/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->a:Lkc/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->reset()V

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->a:Lkc/c;

    invoke-interface {p1}, Lkc/c;->a()V

    return-void
.end method
