.class final Lkg/e$a;
.super Lio/grpc/netty/shaded/io/netty/util/internal/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/netty/shaded/io/netty/util/internal/y<",
        "Lkg/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected r()J
    .locals 2

    invoke-static {}, Lkg/e;->B3()J

    move-result-wide v0

    return-wide v0
.end method

.method protected s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lkg/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkg/e;->A3()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    return-object v0
.end method
