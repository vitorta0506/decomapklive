.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;
.super Lio/grpc/netty/shaded/io/netty/channel/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "m"
.end annotation


# instance fields
.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    .line 2
    invoke-direct {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;I)V

    return-void
.end method


# virtual methods
.method protected f(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iget v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->C:I

    .line 2
    instance-of v1, p2, Lkg/o;

    if-eqz v1, :cond_2

    .line 3
    check-cast p2, Lkg/o;

    .line 4
    invoke-virtual {p2}, Lkg/o;->k4()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sub-int/2addr p1, v1

    .line 5
    invoke-virtual {p2, p1}, Lkg/o;->g4(I)Lkg/j;

    move-result-object p1

    invoke-static {p1, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->h0(Lkg/j;Lkg/j;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p2, v1, p3}, Lkg/o;->I3(ZLkg/j;)Lkg/o;

    :cond_1
    return-object p2

    .line 7
    :cond_2
    invoke-static {p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->h0(Lkg/j;Lkg/j;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/c;->i(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method protected g(Lkg/k;Lkg/j;)Lkg/j;
    .locals 1

    .line 1
    instance-of v0, p2, Lkg/o;

    if-eqz v0, :cond_1

    .line 2
    check-cast p2, Lkg/o;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->i0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    move-result-object v0

    iget-boolean v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->a:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lkg/a;->P1()I

    move-result v0

    invoke-interface {p1, v0}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lkg/a;->P1()I

    move-result v0

    invoke-interface {p1, v0}, Lkg/k;->b(I)Lkg/j;

    move-result-object p1

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p1, p2}, Lkg/j;->x2(Lkg/j;)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 8
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    .line 9
    :goto_1
    invoke-virtual {p2}, Lkg/e;->release()Z

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method protected r()Lkg/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
