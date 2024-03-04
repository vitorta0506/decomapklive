.class public abstract Lio/grpc/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/t0$c;,
        Lio/grpc/t0$g;,
        Lio/grpc/t0$h;,
        Lio/grpc/t0$b;,
        Lio/grpc/t0$e;,
        Lio/grpc/t0$f;,
        Lio/grpc/t0$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public abstract c()V
.end method

.method public d(Lio/grpc/t0$e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/t0;->e(Lio/grpc/t0$f;)V

    return-void
.end method

.method public e(Lio/grpc/t0$f;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/t0$e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/t0$e;

    invoke-virtual {p0, p1}, Lio/grpc/t0;->d(Lio/grpc/t0$e;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/t0$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/t0$a;-><init>(Lio/grpc/t0;Lio/grpc/t0$f;)V

    invoke-virtual {p0, v0}, Lio/grpc/t0;->d(Lio/grpc/t0$e;)V

    :goto_0
    return-void
.end method
