.class Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$a;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6be1b80ac06cecb0L


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->i(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
