.class final Lio/grpc/netty/shaded/io/netty/util/q$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/shaded/io/netty/util/q$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->a:I

    .line 3
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u0(II)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->b:Ljava/util/Queue;

    .line 4
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->c:I

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/util/q$e;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->b:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method b()Lio/grpc/netty/shaded/io/netty/util/q$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/util/q$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->b:Ljava/util/Queue;

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/util/q$c;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/q$c;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method c()Lio/grpc/netty/shaded/io/netty/util/q$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/util/q$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->c:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->a:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->c:I

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/q$c;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/q$c;-><init>(Lio/grpc/netty/shaded/io/netty/util/q$e;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method d(Lio/grpc/netty/shaded/io/netty/util/q$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/q$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/q$c;->e()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$e;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
