.class public Lio/grpc/netty/shaded/io/netty/channel/ChannelException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/ChannelException$a;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x285d7cf2a6a69bbcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method static newStatic(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/ChannelException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/channel/ChannelException;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException$a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException$a;

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-static {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->f(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    return-object p0
.end method
