.class Lio/grpc/internal/y0$i$a;
.super Lio/grpc/internal/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/y0$i;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/q;

.field final synthetic b:Lio/grpc/internal/y0$i;


# direct methods
.method constructor <init>(Lio/grpc/internal/y0$i;Lio/grpc/internal/q;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0$i$a;->b:Lio/grpc/internal/y0$i;

    iput-object p2, p0, Lio/grpc/internal/y0$i$a;->a:Lio/grpc/internal/q;

    invoke-direct {p0}, Lio/grpc/internal/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public o(Lio/grpc/internal/ClientStreamListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0$i$a;->b:Lio/grpc/internal/y0$i;

    invoke-static {v0}, Lio/grpc/internal/y0$i;->i(Lio/grpc/internal/y0$i;)Lio/grpc/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/m;->b()V

    .line 2
    new-instance v0, Lio/grpc/internal/y0$i$a$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/y0$i$a$a;-><init>(Lio/grpc/internal/y0$i$a;Lio/grpc/internal/ClientStreamListener;)V

    invoke-super {p0, v0}, Lio/grpc/internal/i0;->o(Lio/grpc/internal/ClientStreamListener;)V

    return-void
.end method

.method protected p()Lio/grpc/internal/q;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/y0$i$a;->a:Lio/grpc/internal/q;

    return-object v0
.end method
