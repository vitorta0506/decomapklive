.class Lio/grpc/internal/z1$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z1;->c0(Lio/grpc/internal/z1$b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z1$p;->a:Lio/grpc/internal/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$p;->a:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->q(Lio/grpc/internal/z1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z1$p;->a:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->C(Lio/grpc/internal/z1;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k2;->c()V

    :cond_0
    return-void
.end method
