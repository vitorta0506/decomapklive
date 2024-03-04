.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "config"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    return-object v0
.end method

.method public protocol()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v0

    return-object v0
.end method
