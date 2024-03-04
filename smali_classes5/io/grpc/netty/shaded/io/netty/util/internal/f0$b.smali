.class final Lio/grpc/netty/shaded/io/netty/util/internal/f0$b;
.super Lio/grpc/netty/shaded/io/netty/util/internal/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/f0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/f0$b;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/f0$b;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
