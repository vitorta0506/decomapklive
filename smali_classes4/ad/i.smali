.class public interface abstract Lad/i;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Lad/c;)V
    .param p1    # Lad/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs abstract c(Ljava/lang/String;[Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
