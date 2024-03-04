.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;
    }
.end annotation


# instance fields
.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;->g:Ljava/util/Map;

    return-void
.end method

.method private static n(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected j(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->getPeerPort()I

    move-result p1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;->n(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method k(JLjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;->n(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;->g:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;

    if-nez p3, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->isValid()Z

    move-result p4

    if-nez p4, :cond_2

    .line 6
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->i(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)V

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->j()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setSession(JJ)Z

    move-result p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->invalidate()V

    .line 12
    :cond_3
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->l()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
