.class Lcom/scwang/smartrefresh/header/WaterDropHeader$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/WaterDropHeader;->a(Lwd/j;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/scwang/smartrefresh/header/WaterDropHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/WaterDropHeader;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader$a;->b:Lcom/scwang/smartrefresh/header/WaterDropHeader;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader$a;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader$a;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader$a;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
