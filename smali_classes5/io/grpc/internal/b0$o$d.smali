.class Lio/grpc/internal/b0$o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/b0$o;->d(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field final synthetic c:Lio/grpc/s0;

.field final synthetic d:Lio/grpc/internal/b0$o;


# direct methods
.method constructor <init>(Lio/grpc/internal/b0$o;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/b0$o$d;->d:Lio/grpc/internal/b0$o;

    iput-object p2, p0, Lio/grpc/internal/b0$o$d;->a:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/internal/b0$o$d;->b:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iput-object p4, p0, Lio/grpc/internal/b0$o$d;->c:Lio/grpc/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/b0$o$d;->d:Lio/grpc/internal/b0$o;

    invoke-static {v0}, Lio/grpc/internal/b0$o;->e(Lio/grpc/internal/b0$o;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/b0$o$d;->a:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/b0$o$d;->b:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object v3, p0, Lio/grpc/internal/b0$o$d;->c:Lio/grpc/s0;

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/internal/ClientStreamListener;->d(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V

    return-void
.end method
