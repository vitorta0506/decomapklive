.class public Lug/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private b:Lio/grpc/netty/shaded/io/netty/util/internal/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lug/p;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p2}, Lug/o;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lug/p;->a:Z

    return-void
.end method


# virtual methods
.method public final b(Lio/grpc/netty/shaded/io/netty/util/internal/k;)V
    .locals 0

    iput-object p1, p0, Lug/p;->b:Lio/grpc/netty/shaded/io/netty/util/internal/k;

    return-void
.end method

.method public final c()Lio/grpc/netty/shaded/io/netty/util/internal/k;
    .locals 1

    iget-object v0, p0, Lug/p;->b:Lio/grpc/netty/shaded/io/netty/util/internal/k;

    return-object v0
.end method
