.class Lph/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmh/g;


# instance fields
.field private final a:Lio/grpc/r;


# direct methods
.method public constructor <init>(Lio/grpc/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lph/a;->a:Lio/grpc/r;

    return-void
.end method


# virtual methods
.method public a(Lmh/g;)V
    .locals 1

    .line 1
    check-cast p1, Lph/a;

    .line 2
    iget-object v0, p0, Lph/a;->a:Lio/grpc/r;

    iget-object p1, p1, Lph/a;->a:Lio/grpc/r;

    invoke-virtual {v0, p1}, Lio/grpc/r;->k(Lio/grpc/r;)V

    return-void
.end method

.method public b()Lmh/g;
    .locals 2

    new-instance v0, Lph/a;

    iget-object v1, p0, Lph/a;->a:Lio/grpc/r;

    invoke-virtual {v1}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lph/a;-><init>(Lio/grpc/r;)V

    return-object v0
.end method

.method c()Lio/grpc/r;
    .locals 1

    iget-object v0, p0, Lph/a;->a:Lio/grpc/r;

    return-object v0
.end method
