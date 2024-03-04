.class Lio/grpc/internal/q1$e;
.super Lio/grpc/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/q1;->t(Lio/grpc/internal/y0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/y0;

.field final synthetic b:Lio/grpc/internal/q1;


# direct methods
.method constructor <init>(Lio/grpc/internal/q1;Lio/grpc/internal/y0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/q1$e;->b:Lio/grpc/internal/q1;

    iput-object p2, p0, Lio/grpc/internal/q1$e;->a:Lio/grpc/internal/y0;

    invoke-direct {p0}, Lio/grpc/internal/e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/q1$e;->a:Lio/grpc/internal/y0;

    invoke-virtual {v0}, Lio/grpc/internal/y0;->N()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/a;
    .locals 1

    sget-object v0, Lio/grpc/a;->c:Lio/grpc/a;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/q1$e;->a:Lio/grpc/internal/y0;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/q1$e;->a:Lio/grpc/internal/y0;

    invoke-virtual {v0}, Lio/grpc/internal/y0;->a()Lio/grpc/internal/r;

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/q1$e;->a:Lio/grpc/internal/y0;

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "OobChannel is shutdown"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/y0;->g(Lio/grpc/Status;)V

    return-void
.end method
