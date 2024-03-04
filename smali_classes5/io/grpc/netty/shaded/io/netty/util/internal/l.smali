.class final Lio/grpc/netty/shaded/io/netty/util/internal/l;
.super Ljava/util/concurrent/atomic/LongAdder;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    return-void
.end method


# virtual methods
.method public value()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
