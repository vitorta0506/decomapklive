.class Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/fungame/FunGameView;->k(Lwd/j;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/scwang/smartrefresh/header/fungame/FunGameView;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/fungame/FunGameView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->d:Lcom/scwang/smartrefresh/header/fungame/FunGameView;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView$a;->d:Lcom/scwang/smartrefresh/header/fungame/FunGameView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->y(I)V

    return-void
.end method
