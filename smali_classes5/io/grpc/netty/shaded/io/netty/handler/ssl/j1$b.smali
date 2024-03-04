.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    return-object v0
.end method

.method public protocol()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    return-object v0
.end method
