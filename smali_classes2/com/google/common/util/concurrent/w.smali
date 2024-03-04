.class public abstract Lcom/google/common/util/concurrent/w;
.super Lcom/google/common/util/concurrent/v;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/v<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/d0<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/v;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w;->y0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/d0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected abstract y0()Lcom/google/common/util/concurrent/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/d0<",
            "+TV;>;"
        }
    .end annotation
.end method
