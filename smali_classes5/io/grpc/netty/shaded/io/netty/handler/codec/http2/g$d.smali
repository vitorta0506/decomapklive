.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field private a:Lkg/j;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;


# direct methods
.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->e(J)V

    return-void
.end method


# virtual methods
.method final a(Lkg/j;ILkg/k;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    if-nez v0, :cond_2

    int-to-long v0, p2

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;->f()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->c()V

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lkg/j;->I1(I)Lkg/j;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p3, p2}, Lkg/k;->l(I)Lkg/j;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lkg/j;->y2(Lkg/j;I)Lkg/j;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    :goto_0
    return-void

    .line 6
    :cond_2
    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

    move-result-object p4

    invoke-interface {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;

    move-result-object p4

    invoke-interface {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;->f()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    .line 7
    invoke-virtual {p4}, Lkg/j;->P1()I

    move-result p4

    int-to-long v2, p4

    cmp-long p4, v0, v2

    if-gez p4, :cond_3

    .line 8
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->c()V

    .line 9
    :cond_3
    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    invoke-virtual {p4, p2}, Lkg/j;->k1(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 10
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    invoke-virtual {p3, p1, p2}, Lkg/j;->y2(Lkg/j;I)Lkg/j;

    goto :goto_1

    .line 11
    :cond_4
    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    invoke-virtual {p4}, Lkg/j;->P1()I

    move-result p4

    add-int/2addr p4, p2

    invoke-interface {p3, p4}, Lkg/k;->l(I)Lkg/j;

    move-result-object p3

    .line 12
    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    invoke-virtual {p3, p4}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lkg/j;->y2(Lkg/j;I)Lkg/j;

    .line 13
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 14
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    :goto_1
    return-void
.end method

.method b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 3
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    return-void
.end method

.method d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)I

    move-result v1

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a:Lkg/j;

    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;->d(ILkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b()V

    .line 3
    throw v0
.end method
