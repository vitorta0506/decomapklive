.class final Lpg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lkg/j;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object p3

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lkg/j;->P1()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lkg/j;->o1()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 5
    invoke-virtual {p2}, Lkg/j;->n1()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 6
    :cond_1
    invoke-virtual {p2}, Lkg/j;->i1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p3}, Lkg/j;->Q1()I

    move-result p1

    invoke-virtual {p2, p3, p1, v0}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 8
    invoke-virtual {p3}, Lkg/j;->K2()I

    move-result p1

    invoke-virtual {p3, p1}, Lkg/j;->R1(I)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object p2

    .line 10
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lpg/a;->F(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 12
    throw p1
.end method
