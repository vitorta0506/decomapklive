.class final Lkg/b0$b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/b0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field final a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/b0$b$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field b:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/nio/ByteBuffer;

.field d:J

.field e:I


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/b0$b$b<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lkg/b0$b$b;->d:J

    .line 3
    iput-object p1, p0, Lkg/b0$b$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lkg/b0$b$b;->b:Lkg/w;

    .line 2
    iput-object v0, p0, Lkg/b0$b$b;->c:Ljava/nio/ByteBuffer;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lkg/b0$b$b;->d:J

    .line 4
    iget-object v0, p0, Lkg/b0$b$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$a;->a(Ljava/lang/Object;)V

    return-void
.end method
