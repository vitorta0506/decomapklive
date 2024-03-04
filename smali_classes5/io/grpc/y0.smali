.class final Lio/grpc/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/y0$d;,
        Lio/grpc/y0$b;,
        Lio/grpc/y0$a;,
        Lio/grpc/y0$c;
    }
.end annotation


# direct methods
.method static a(Lio/grpc/y0$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/y0$d<",
            "TK;TV;>;TK;)TV;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lio/grpc/y0$d;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static b(Lio/grpc/y0$d;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/y0$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/y0$d<",
            "TK;TV;>;TK;TV;)",
            "Lio/grpc/y0$d<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lio/grpc/y0$c;

    invoke-direct {p0, p1, p2}, Lio/grpc/y0$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Lio/grpc/y0$d;->b(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/y0$d;

    move-result-object p0

    return-object p0
.end method
