.class public Lcom/yanzhenjie/loading/LoadingView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Lag/c;

.field private b:Lag/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Lag/b;

    invoke-direct {p2, p1}, Lag/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yanzhenjie/loading/LoadingView;->b:Lag/b;

    .line 4
    new-instance p1, Lag/c;

    iget-object p2, p0, Lcom/yanzhenjie/loading/LoadingView;->b:Lag/b;

    invoke-direct {p1, p2}, Lag/c;-><init>(Lag/d;)V

    iput-object p1, p0, Lcom/yanzhenjie/loading/LoadingView;->a:Lag/c;

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->a:Lag/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lag/c;->start()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->a:Lag/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lag/c;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->b:Lag/b;

    invoke-virtual {v0, p1, p2, p3}, Lag/b;->w(III)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->b()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->c()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->c()V

    :goto_0
    return-void
.end method
