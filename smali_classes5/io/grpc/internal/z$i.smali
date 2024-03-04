.class final Lio/grpc/internal/z$i;
.super Lio/grpc/internal/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field final b:Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field final c:Lio/grpc/Status;

.field final synthetic d:Lio/grpc/internal/z;


# direct methods
.method constructor <init>(Lio/grpc/internal/z;Lio/grpc/g$a;Lio/grpc/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/internal/z$i;->d:Lio/grpc/internal/z;

    .line 2
    invoke-static {p1}, Lio/grpc/internal/z;->h(Lio/grpc/internal/z;)Lio/grpc/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/x;-><init>(Lio/grpc/r;)V

    .line 3
    iput-object p2, p0, Lio/grpc/internal/z$i;->b:Lio/grpc/g$a;

    .line 4
    iput-object p3, p0, Lio/grpc/internal/z$i;->c:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/z$i;->b:Lio/grpc/g$a;

    iget-object v1, p0, Lio/grpc/internal/z$i;->c:Lio/grpc/Status;

    new-instance v2, Lio/grpc/s0;

    invoke-direct {v2}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method
