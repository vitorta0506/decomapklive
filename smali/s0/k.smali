.class public interface abstract Ls0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp0/f;"
    }
.end annotation


# virtual methods
.method public abstract getRequest()Lcom/bumptech/glide/request/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSize(Ls0/j;)V
    .param p1    # Ls0/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lt0/f<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract removeCallback(Ls0/j;)V
    .param p1    # Ls0/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRequest(Lcom/bumptech/glide/request/e;)V
    .param p1    # Lcom/bumptech/glide/request/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
