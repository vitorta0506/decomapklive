.class Lio/grpc/internal/b0$o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/b0$o;->b(Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/s0;

.field final synthetic b:Lio/grpc/internal/b0$o;


# direct methods
.method constructor <init>(Lio/grpc/internal/b0$o;Lio/grpc/s0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/b0$o$c;->b:Lio/grpc/internal/b0$o;

    iput-object p2, p0, Lio/grpc/internal/b0$o$c;->a:Lio/grpc/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/b0$o$c;->b:Lio/grpc/internal/b0$o;

    invoke-static {v0}, Lio/grpc/internal/b0$o;->e(Lio/grpc/internal/b0$o;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/b0$o$c;->a:Lio/grpc/s0;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStreamListener;->b(Lio/grpc/s0;)V

    return-void
.end method
