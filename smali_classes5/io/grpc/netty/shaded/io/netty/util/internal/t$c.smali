.class final Lio/grpc/netty/shaded/io/netty/util/internal/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/t$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/t;
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
.method public current()Ljava/util/Random;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;->current()Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method
