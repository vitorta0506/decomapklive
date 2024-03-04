.class public Lag/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private final a:Lag/d;

.field private final b:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Lag/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lag/c$a;

    invoke-direct {v0, p0}, Lag/c$a;-><init>(Lag/c;)V

    iput-object v0, p0, Lag/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 3
    iput-object p1, p0, Lag/c;->a:Lag/d;

    .line 4
    invoke-virtual {p1, v0}, Lag/d;->j(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lag/c;->a:Lag/d;

    invoke-virtual {v0, p1}, Lag/d;->d(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lag/c;->a:Lag/d;

    iget v0, v0, Lag/d;->g:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lag/c;->a:Lag/d;

    iget v0, v0, Lag/d;->f:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lag/c;->a:Lag/d;

    invoke-virtual {v0}, Lag/d;->f()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lag/c;->a:Lag/d;

    invoke-virtual {v0, p1}, Lag/d;->i(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lag/c;->a:Lag/d;

    invoke-virtual {v0, p1}, Lag/d;->h(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lag/c;->a:Lag/d;

    invoke-virtual {v0, p1}, Lag/d;->k(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lag/c;->a:Lag/d;

    invoke-virtual {v0}, Lag/d;->m()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lag/c;->a:Lag/d;

    invoke-virtual {v0}, Lag/d;->n()V

    return-void
.end method
