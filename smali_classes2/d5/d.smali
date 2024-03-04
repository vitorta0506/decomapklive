.class public abstract Ld5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ld5/a;)Ld5/d;
    .param p1    # Ld5/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld5/a<",
            "TResultT;>;)",
            "Ld5/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/concurrent/Executor;Ld5/b;)Ld5/d;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld5/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ld5/b;",
            ")",
            "Ld5/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/concurrent/Executor;Ld5/c;)Ld5/d;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld5/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ld5/c<",
            "-TResultT;>;)",
            "Ld5/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method
