.class final Lpg/a$b;
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
    .locals 4

    .line 1
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object p3

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    instance-of v1, p2, Lkg/o;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4
    move-object p1, p2

    check-cast p1, Lkg/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Lkg/a;->K2()I

    move-result v0

    invoke-virtual {p1}, Lkg/o;->F()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lkg/a;->K2()I

    move-result v0

    invoke-virtual {p1, v0}, Lkg/o;->M3(I)Lkg/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const v1, 0x7fffffff

    .line 7
    :try_start_2
    invoke-interface {p1, v1}, Lkg/k;->m(I)Lkg/o;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lkg/o;->K3(ZLkg/j;)Lkg/o;

    move-result-object p1

    :cond_2
    :goto_0
    move-object v0, p1

    .line 8
    invoke-virtual {v0, v2, p3}, Lkg/o;->K3(ZLkg/j;)Lkg/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_1
    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_3

    .line 10
    invoke-virtual {p1}, Lkg/e;->release()Z

    .line 11
    :cond_3
    throw v0
.end method
