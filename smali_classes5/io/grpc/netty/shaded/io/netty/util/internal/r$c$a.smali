.class Lio/grpc/netty/shaded/io/netty/util/internal/r$c$a;
.super Lio/grpc/netty/shaded/io/netty/util/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/r$c;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/netty/shaded/io/netty/util/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic j:Lio/grpc/netty/shaded/io/netty/util/internal/r$b;

.field final synthetic k:Lio/grpc/netty/shaded/io/netty/util/internal/r$c;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$c;Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/r$c$a;->k:Lio/grpc/netty/shaded/io/netty/util/internal/r$c;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/r$c$a;->j:Lio/grpc/netty/shaded/io/netty/util/internal/r$b;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected e(Lio/grpc/netty/shaded/io/netty/util/q$d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/q$d<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/r$c$a;->j:Lio/grpc/netty/shaded/io/netty/util/internal/r$b;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/r$b;->a(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
