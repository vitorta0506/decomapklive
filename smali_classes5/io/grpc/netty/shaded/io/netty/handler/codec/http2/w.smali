.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;


# static fields
.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

.field private final c:Lio/grpc/netty/shaded/io/netty/channel/k;

.field private final d:Lio/grpc/netty/shaded/io/netty/channel/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;-><init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;-><init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s0;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->a:Ljava/lang/String;

    const-string p1, "connectionHandler"

    .line 5
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    const-string p1, "upgradeToHandler"

    .line 6
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/k;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->c:Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 7
    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->d:Lio/grpc/netty/shaded/io/netty/channel/k;

    return-void
.end method

.method private c(Lio/grpc/netty/shaded/io/netty/channel/m;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->g0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->H1()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ltg/a;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p1

    invoke-interface {p1, v2}, Lkg/k;->l(I)Lkg/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ltg/a;->entries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltg/b$a;

    .line 5
    invoke-interface {v2}, Ltg/b$a;->key()C

    move-result v3

    invoke-virtual {p1, v3}, Lkg/j;->C2(I)Lkg/j;

    .line 6
    invoke-interface {v2}, Ltg/b$a;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lkg/j;->E2(I)Lkg/j;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;->URL_SAFE:Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->l(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;

    move-result-object v0

    .line 8
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lkg/j;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    return-object v1

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object p1, v0

    .line 11
    :goto_1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 13
    throw v1
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->c(Lio/grpc/netty/shaded/io/netty/channel/m;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->a:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->e:Ljava/util/List;

    return-object p1
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->c:Lio/grpc/netty/shaded/io/netty/channel/k;

    invoke-interface {p2, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->x0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 2
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->d:Lio/grpc/netty/shaded/io/netty/channel/k;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->W0(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->d:Lio/grpc/netty/shaded/io/netty/channel/k;

    invoke-interface {v0, p2, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->x0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 5
    :cond_0
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q0()V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public protocol()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
