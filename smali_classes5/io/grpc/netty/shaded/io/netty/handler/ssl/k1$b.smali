.class Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lkg/k;Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private c:[Ljava/lang/String;

.field private d:Ljava/util/List;

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;)V

    return-void
.end method


# virtual methods
.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->c:[Ljava/lang/String;

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->c:[Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getSigAlgs(J)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->c:[Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 8
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .line 9
    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 10
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->c:[Ljava/lang/String;

    .line 12
    :cond_4
    :goto_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->c:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->n(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->o(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->d:Ljava/util/List;

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->d:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getSniHostname(J)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->d:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    .line 10
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getSniHostname(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 11
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->a([B)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->d:Ljava/util/List;

    .line 12
    :cond_3
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;->d:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
