.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "j"
.end annotation


# instance fields
.field private final a:Z

.field b:Z

.field c:Z

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->a:Z

    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->c:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->b:Z

    .line 2
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->a:Z

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->g()V

    :cond_0
    return-void
.end method
