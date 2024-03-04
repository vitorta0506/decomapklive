.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->A0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic b:Lkg/j;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;->b:Lkg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;->b:Lkg/j;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method
