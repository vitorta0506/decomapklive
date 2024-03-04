.class Lio/grpc/internal/g1$l$a;
.super Lio/grpc/internal/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$l;->h(Lio/grpc/g$a;Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/g$a;

.field final synthetic c:Lio/grpc/Status;

.field final synthetic d:Lio/grpc/internal/g1$l;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$l;Lio/grpc/g$a;Lio/grpc/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$l$a;->d:Lio/grpc/internal/g1$l;

    iput-object p2, p0, Lio/grpc/internal/g1$l$a;->b:Lio/grpc/g$a;

    iput-object p3, p0, Lio/grpc/internal/g1$l$a;->c:Lio/grpc/Status;

    .line 2
    invoke-static {p1}, Lio/grpc/internal/g1$l;->g(Lio/grpc/internal/g1$l;)Lio/grpc/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/x;-><init>(Lio/grpc/r;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/g1$l$a;->b:Lio/grpc/g$a;

    iget-object v1, p0, Lio/grpc/internal/g1$l$a;->c:Lio/grpc/Status;

    new-instance v2, Lio/grpc/s0;

    invoke-direct {v2}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method
