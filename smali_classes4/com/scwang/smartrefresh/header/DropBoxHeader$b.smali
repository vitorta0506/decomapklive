.class Lcom/scwang/smartrefresh/header/DropBoxHeader$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/DropBoxHeader;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/header/DropBoxHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$b;->a:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$b;->a:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    iget-object v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->q:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->p:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->m:F

    :cond_1
    :goto_0
    return-void
.end method