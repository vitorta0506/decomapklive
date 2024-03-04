.class public abstract Lm7/a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lg7/a;)V
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg7/a;->e(Ljava/lang/Throwable;)Lg7/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm7/a;->a(Lg7/a;)V

    .line 2
    invoke-virtual {p0}, Lm7/a;->onComplete()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method
