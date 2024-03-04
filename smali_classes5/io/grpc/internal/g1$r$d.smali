.class final Lio/grpc/internal/g1$r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$r;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/n0$i;

.field final synthetic b:Lio/grpc/ConnectivityState;

.field final synthetic c:Lio/grpc/internal/g1$r;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$r;Lio/grpc/n0$i;Lio/grpc/ConnectivityState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/g1$r$d;->c:Lio/grpc/internal/g1$r;

    iput-object p2, p0, Lio/grpc/internal/g1$r$d;->a:Lio/grpc/n0$i;

    iput-object p3, p0, Lio/grpc/internal/g1$r$d;->b:Lio/grpc/ConnectivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$r$d;->c:Lio/grpc/internal/g1$r;

    iget-object v1, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v1}, Lio/grpc/internal/g1;->G0(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$r;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$r$d;->c:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v1, p0, Lio/grpc/internal/g1$r$d;->a:Lio/grpc/n0$i;

    invoke-static {v0, v1}, Lio/grpc/internal/g1;->c0(Lio/grpc/internal/g1;Lio/grpc/n0$i;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$r$d;->b:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$r$d;->c:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->G(Lio/grpc/internal/g1;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/grpc/internal/g1$r$d;->b:Lio/grpc/ConnectivityState;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/grpc/internal/g1$r$d;->a:Lio/grpc/n0$i;

    aput-object v4, v2, v3

    const-string v3, "Entering {0} state with picker: {1}"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/grpc/internal/g1$r$d;->c:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->Y(Lio/grpc/internal/g1;)Lio/grpc/internal/v;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/g1$r$d;->b:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Lio/grpc/internal/v;->a(Lio/grpc/ConnectivityState;)V

    :cond_1
    return-void
.end method
