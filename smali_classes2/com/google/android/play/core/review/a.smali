.class public interface abstract Lcom/google/android/play/core/review/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Ld5/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/d<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Ld5/d;
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/review/ReviewInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ")",
            "Ld5/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
