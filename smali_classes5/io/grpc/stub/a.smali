.class public abstract Lio/grpc/stub/a;
.super Lio/grpc/stub/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/grpc/stub/a<",
        "TS;>;>",
        "Lio/grpc/stub/b<",
        "TS;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lio/grpc/d;Lio/grpc/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/b;-><init>(Lio/grpc/d;Lio/grpc/c;)V

    return-void
.end method

.method public static f(Lio/grpc/stub/b$a;Lio/grpc/d;)Lio/grpc/stub/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/stub/b<",
            "TT;>;>(",
            "Lio/grpc/stub/b$a<",
            "TT;>;",
            "Lio/grpc/d;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lio/grpc/c;->k:Lio/grpc/c;

    invoke-static {p0, p1, v0}, Lio/grpc/stub/a;->g(Lio/grpc/stub/b$a;Lio/grpc/d;Lio/grpc/c;)Lio/grpc/stub/b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lio/grpc/stub/b$a;Lio/grpc/d;Lio/grpc/c;)Lio/grpc/stub/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/stub/b<",
            "TT;>;>(",
            "Lio/grpc/stub/b$a<",
            "TT;>;",
            "Lio/grpc/d;",
            "Lio/grpc/c;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/stub/e;->b:Lio/grpc/c$a;

    sget-object v1, Lio/grpc/stub/e$e;->c:Lio/grpc/stub/e$e;

    .line 2
    invoke-virtual {p2, v0, v1}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object p2

    .line 3
    invoke-interface {p0, p1, p2}, Lio/grpc/stub/b$a;->a(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/stub/b;

    move-result-object p0

    return-object p0
.end method
