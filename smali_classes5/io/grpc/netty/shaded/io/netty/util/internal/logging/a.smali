.class final Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b:Ljava/lang/Throwable;

    return-object v0
.end method
