.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->d(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->R(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;Ljava/lang/Throwable;)V

    return-void
.end method
