.class final Lig/m0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/f2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/internal/f2$d<",
        "Lio/grpc/netty/shaded/io/netty/channel/m0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lig/m0$f;


# direct methods
.method constructor <init>(ILjava/lang/String;Lig/m0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lig/m0$e;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p2, "io.grpc.netty.shaded.io.netty.eventLoopThreads"

    .line 3
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/p;->a()I

    move-result p1

    iput p1, p0, Lig/m0$e;->b:I

    goto :goto_0

    .line 5
    :cond_0
    iput p1, p0, Lig/m0$e;->b:I

    .line 6
    :goto_0
    iput-object p3, p0, Lig/m0$e;->c:Lig/m0$f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lig/m0$e;->d()Lio/grpc/netty/shaded/io/netty/channel/m0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/m0;

    invoke-virtual {p0, p1}, Lig/m0$e;->c(Lio/grpc/netty/shaded/io/netty/channel/m0;)V

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/m0;)V
    .locals 6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lug/l;->z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;

    return-void
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/channel/m0;
    .locals 4

    .line 1
    new-instance v0, Lug/i;

    iget-object v1, p0, Lig/m0$e;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lug/i;-><init>(Ljava/lang/String;Z)V

    .line 2
    sget-object v1, Lig/m0$b;->a:[I

    iget-object v3, p0, Lig/m0$e;->c:Lig/m0$f;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Lig/m0$e;->b:I

    invoke-static {v1, v0}, Lig/m0;->b(ILjava/util/concurrent/ThreadFactory;)Lio/grpc/netty/shaded/io/netty/channel/m0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown/Unsupported EventLoopGroupType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lig/m0$e;->c:Lig/m0$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 5
    :cond_1
    new-instance v1, Lmg/e;

    iget v2, p0, Lig/m0$e;->b:I

    invoke-direct {v1, v2, v0}, Lmg/e;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lig/m0$e;->a:Ljava/lang/String;

    return-object v0
.end method
