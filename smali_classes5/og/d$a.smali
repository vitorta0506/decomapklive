.class Log/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Log/d;->w1(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic b:Log/d;


# direct methods
.method constructor <init>(Log/d;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Log/d$a;->b:Log/d;

    iput-object p2, p0, Log/d$a;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Log/d$a;->b:Log/d;

    iget-object v1, p0, Log/d$a;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v0, v1}, Log/d;->k1(Log/d;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method
