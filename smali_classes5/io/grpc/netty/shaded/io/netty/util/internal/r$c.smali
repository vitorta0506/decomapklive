.class final Lio/grpc/netty/shaded/io/netty/util/internal/r$c;
.super Lio/grpc/netty/shaded/io/netty/util/internal/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/r$c$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/r$c$a;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$c;Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/r$c;->a:Lio/grpc/netty/shaded/io/netty/util/q;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/r$c;->a:Lio/grpc/netty/shaded/io/netty/util/q;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/q;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
