.class Lio/grpc/internal/y0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/y0;->a()Lio/grpc/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/y0;


# direct methods
.method constructor <init>(Lio/grpc/internal/y0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0$c;->a:Lio/grpc/internal/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0$c;->a:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->j(Lio/grpc/internal/y0;)Lio/grpc/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/y0$c;->a:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->z(Lio/grpc/internal/y0;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "CONNECTING as requested"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/y0$c;->a:Lio/grpc/internal/y0;

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    invoke-static {v0, v1}, Lio/grpc/internal/y0;->F(Lio/grpc/internal/y0;Lio/grpc/ConnectivityState;)V

    .line 4
    iget-object v0, p0, Lio/grpc/internal/y0$c;->a:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->G(Lio/grpc/internal/y0;)V

    :cond_0
    return-void
.end method
