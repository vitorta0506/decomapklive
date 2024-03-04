.class public final Lth/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lth/b;
    .locals 1

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)Lth/b;
    .locals 1

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lth/e;

    invoke-direct {v0, p0}, Lth/e;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
