.class abstract Lig/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/o0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field private a:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private final b:Lqh/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object v0

    iput-object v0, p0, Lig/o0$b;->b:Lqh/b;

    return-void
.end method


# virtual methods
.method public final a()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lig/o0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object v0
.end method

.method public final b(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lig/o0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method

.method public c()Lqh/b;
    .locals 1

    iget-object v0, p0, Lig/o0$b;->b:Lqh/b;

    return-object v0
.end method

.method public final e(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    iget-object v0, p0, Lig/o0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method
