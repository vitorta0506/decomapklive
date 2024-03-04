.class public final Lio/grpc/alts/internal/t$d;
.super Lio/grpc/stub/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/a<",
        "Lio/grpc/alts/internal/t$d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/d;Lio/grpc/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/stub/a;-><init>(Lio/grpc/d;Lio/grpc/c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/d;Lio/grpc/c;Lio/grpc/alts/internal/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/alts/internal/t$d;-><init>(Lio/grpc/d;Lio/grpc/c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/stub/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/t$d;->h(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/alts/internal/t$d;

    move-result-object p1

    return-object p1
.end method

.method protected h(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/alts/internal/t$d;
    .locals 1

    new-instance v0, Lio/grpc/alts/internal/t$d;

    invoke-direct {v0, p1, p2}, Lio/grpc/alts/internal/t$d;-><init>(Lio/grpc/d;Lio/grpc/c;)V

    return-object v0
.end method

.method public i(Lio/grpc/stub/h;)Lio/grpc/stub/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/h<",
            "Lio/grpc/alts/internal/HandshakerResp;",
            ">;)",
            "Lio/grpc/stub/h<",
            "Lio/grpc/alts/internal/HandshakerReq;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/stub/b;->c()Lio/grpc/d;

    move-result-object v0

    invoke-static {}, Lio/grpc/alts/internal/t;->a()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/b;->b()Lio/grpc/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lio/grpc/stub/e;->a(Lio/grpc/g;Lio/grpc/stub/h;)Lio/grpc/stub/h;

    move-result-object p1

    return-object p1
.end method
