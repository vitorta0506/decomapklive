.class Lfg/c$c;
.super Lfg/c$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/q0;

.field private final b:Lio/grpc/netty/shaded/io/netty/channel/m0;


# direct methods
.method public constructor <init>(Lio/grpc/q0;Lio/grpc/netty/shaded/io/netty/channel/m0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfg/c$d;-><init>(Lfg/c$a;)V

    .line 2
    iput-object p1, p0, Lfg/c$c;->a:Lio/grpc/q0;

    .line 3
    iput-object p2, p0, Lfg/c$c;->b:Lio/grpc/netty/shaded/io/netty/channel/m0;

    return-void
.end method


# virtual methods
.method protected j()Lio/grpc/d;
    .locals 1

    iget-object v0, p0, Lfg/c$c;->a:Lio/grpc/q0;

    return-object v0
.end method

.method public k()V
    .locals 8

    .line 1
    iget-object v0, p0, Lfg/c$c;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Lio/grpc/q0;->n()Lio/grpc/q0;

    .line 2
    :try_start_0
    iget-object v0, p0, Lfg/c$c;->a:Lio/grpc/q0;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/q0;->j(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1

    :goto_1
    move-wide v3, v0

    .line 3
    iget-object v2, p0, Lfg/c$c;->b:Lio/grpc/netty/shaded/io/netty/channel/m0;

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v7}, Lug/l;->z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;

    return-void
.end method
