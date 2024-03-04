.class public interface abstract Lwd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Z)Lwd/j;
.end method

.method public abstract b(Z)Lwd/j;
.end method

.method public abstract c(Z)Lwd/j;
.end method

.method public abstract d(I)Lwd/j;
.end method

.method public abstract e(F)Lwd/j;
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
            to = 10.0
        .end annotation
    .end param
.end method

.method public abstract f(Z)Lwd/j;
.end method

.method public abstract getLayout()Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
