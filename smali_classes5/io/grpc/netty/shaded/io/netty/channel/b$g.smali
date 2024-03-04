.class final Lio/grpc/netty/shaded/io/netty/channel/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/b;->Y0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/b;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$g;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/b$g;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$g;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$g;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->v0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V

    return-void
.end method
