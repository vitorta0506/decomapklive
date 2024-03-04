.class Lio/grpc/internal/p$b;
.super Lio/grpc/internal/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/p;->D(Lio/grpc/g$a;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/g$a;

.field final synthetic c:Lio/grpc/internal/p;


# direct methods
.method constructor <init>(Lio/grpc/internal/p;Lio/grpc/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/internal/p$b;->c:Lio/grpc/internal/p;

    iput-object p2, p0, Lio/grpc/internal/p$b;->b:Lio/grpc/g$a;

    .line 2
    invoke-static {p1}, Lio/grpc/internal/p;->k(Lio/grpc/internal/p;)Lio/grpc/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/x;-><init>(Lio/grpc/r;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/p$b;->c:Lio/grpc/internal/p;

    iget-object v1, p0, Lio/grpc/internal/p$b;->b:Lio/grpc/g$a;

    invoke-static {v0}, Lio/grpc/internal/p;->k(Lio/grpc/internal/p;)Lio/grpc/r;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/s;->a(Lio/grpc/r;)Lio/grpc/Status;

    move-result-object v2

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lio/grpc/internal/p;->l(Lio/grpc/internal/p;Lio/grpc/g$a;Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method
