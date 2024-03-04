.class Lig/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/m0$f;,
        Lig/m0$g;,
        Lig/m0$e;,
        Lig/m0$d;,
        Lig/m0$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field public static final b:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final c:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final d:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final e:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final f:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final g:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final h:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final i:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final j:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final k:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final l:Lio/grpc/internal/f2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/f2$d<",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lio/grpc/internal/f2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/f2$d<",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lio/grpc/internal/f2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/f2$d<",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lio/grpc/internal/f2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/f2$d<",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lio/grpc/netty/shaded/io/netty/channel/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/z0;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lig/m0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lig/m0;->a:Ljava/util/logging/Logger;

    const-string v1, "200"

    .line 2
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->b:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "POST"

    .line 3
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->c:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "GET"

    .line 4
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "https"

    .line 5
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->e:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "http"

    .line 6
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->f:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 7
    sget-object v1, Lio/grpc/internal/GrpcUtil;->i:Lio/grpc/s0$i;

    invoke-virtual {v1}, Lio/grpc/s0$i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->g:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "application/grpc"

    .line 8
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->h:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 9
    sget-object v1, Lio/grpc/internal/GrpcUtil;->j:Lio/grpc/s0$i;

    invoke-virtual {v1}, Lio/grpc/s0$i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->i:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "trailers"

    .line 10
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->j:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 11
    sget-object v1, Lio/grpc/internal/GrpcUtil;->k:Lio/grpc/s0$i;

    invoke-virtual {v1}, Lio/grpc/s0$i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    sput-object v1, Lig/m0;->k:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 12
    new-instance v1, Lig/m0$e;

    sget-object v2, Lig/m0$f;->a:Lig/m0$f;

    const/4 v3, 0x1

    const-string v4, "grpc-nio-boss-ELG"

    invoke-direct {v1, v3, v4, v2}, Lig/m0$e;-><init>(ILjava/lang/String;Lig/m0$f;)V

    sput-object v1, Lig/m0;->l:Lio/grpc/internal/f2$d;

    .line 13
    new-instance v4, Lig/m0$e;

    const/4 v5, 0x0

    const-string v6, "grpc-nio-worker-ELG"

    invoke-direct {v4, v5, v6, v2}, Lig/m0$e;-><init>(ILjava/lang/String;Lig/m0$f;)V

    sput-object v4, Lig/m0;->m:Lio/grpc/internal/f2$d;

    .line 14
    invoke-static {}, Lig/m0;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {}, Lig/m0;->j()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lig/m0;->q:Ljava/lang/Class;

    .line 16
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/w0;

    invoke-static {}, Lig/m0;->l()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/w0;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lig/m0;->p:Lio/grpc/netty/shaded/io/netty/channel/h;

    .line 17
    invoke-static {}, Lig/m0;->k()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lig/m0;->r:Ljava/lang/reflect/Constructor;

    .line 18
    new-instance v0, Lig/m0$e;

    sget-object v1, Lig/m0$f;->b:Lig/m0$f;

    const-string v2, "grpc-default-boss-ELG"

    invoke-direct {v0, v3, v2, v1}, Lig/m0$e;-><init>(ILjava/lang/String;Lig/m0$f;)V

    sput-object v0, Lig/m0;->n:Lio/grpc/internal/f2$d;

    .line 19
    new-instance v0, Lig/m0$e;

    const-string v2, "grpc-default-worker-ELG"

    invoke-direct {v0, v5, v2, v1}, Lig/m0$e;-><init>(ILjava/lang/String;Lig/m0$f;)V

    sput-object v0, Lig/m0;->o:Lio/grpc/internal/f2$d;

    goto :goto_0

    .line 20
    :cond_0
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {}, Lig/m0;->o()Ljava/lang/Throwable;

    move-result-object v3

    const-string v5, "Epoll is not available, using Nio."

    invoke-virtual {v0, v2, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-static {}, Lig/m0;->r()Lio/grpc/netty/shaded/io/netty/channel/h;

    move-result-object v0

    sput-object v0, Lig/m0;->p:Lio/grpc/netty/shaded/io/netty/channel/h;

    .line 22
    const-class v0, Log/d;

    sput-object v0, Lig/m0;->q:Ljava/lang/Class;

    .line 23
    sput-object v1, Lig/m0;->n:Lio/grpc/internal/f2$d;

    .line 24
    sput-object v4, Lig/m0;->o:Lio/grpc/internal/f2$d;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lig/m0;->r:Ljava/lang/reflect/Constructor;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Z)Lkg/k;
    .locals 0

    invoke-static {p0}, Lig/m0;->h(Z)Lkg/k;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(ILjava/util/concurrent/ThreadFactory;)Lio/grpc/netty/shaded/io/netty/channel/m0;
    .locals 0

    invoke-static {p0, p1}, Lig/m0;->i(ILjava/util/concurrent/ThreadFactory;)Lio/grpc/netty/shaded/io/netty/channel/m0;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->F()[B

    move-result-object p0

    :goto_0
    return-object p0

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Lio/grpc/s0;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 7

    const-string v0, "defaultPath"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "authority"

    .line 2
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    .line 3
    invoke-static {p4, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lio/grpc/internal/GrpcUtil;->i:Lio/grpc/s0$i;

    invoke-virtual {p0, v0}, Lio/grpc/s0;->i(Lio/grpc/s0$i;)V

    .line 5
    sget-object v0, Lio/grpc/internal/GrpcUtil;->j:Lio/grpc/s0$i;

    invoke-virtual {p0, v0}, Lio/grpc/s0;->i(Lio/grpc/s0$i;)V

    .line 6
    sget-object v0, Lio/grpc/internal/GrpcUtil;->k:Lio/grpc/s0$i;

    invoke-virtual {p0, v0}, Lio/grpc/s0;->i(Lio/grpc/s0$i;)V

    .line 7
    invoke-static {p0}, Lio/grpc/internal/n2;->d(Lio/grpc/s0;)[[B

    move-result-object v1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    .line 8
    invoke-static/range {v1 .. v6}, Lig/n;->u([[BLio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;)Lig/n;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)Lio/grpc/s0;
    .locals 1

    .line 1
    instance-of v0, p0, Lig/l;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lig/l;

    .line 3
    invoke-virtual {p0}, Lig/l;->I()I

    move-result v0

    invoke-virtual {p0}, Lig/l;->G()[[B

    move-result-object p0

    invoke-static {v0, p0}, Lio/grpc/h0;->c(I[[B)Lio/grpc/s0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lig/m0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/h0;->d([[B)Lio/grpc/s0;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)[[B
    .locals 5

    .line 1
    invoke-interface {p0}, Lpg/i;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[B

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lig/m0;->c(Ljava/lang/CharSequence;)[B

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lig/m0;->c(Ljava/lang/CharSequence;)[B

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lio/grpc/internal/n2;->e([[B)[[B

    move-result-object p0

    return-object p0
.end method

.method public static g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)Lio/grpc/s0;
    .locals 1

    .line 1
    instance-of v0, p0, Lig/l;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lig/l;

    .line 3
    invoke-virtual {p0}, Lig/l;->I()I

    move-result v0

    invoke-virtual {p0}, Lig/l;->G()[[B

    move-result-object p0

    invoke-static {v0, p0}, Lio/grpc/h0;->c(I[[B)Lio/grpc/s0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lig/m0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/h0;->d([[B)Lio/grpc/s0;

    move-result-object p0

    return-object p0
.end method

.method private static h(Z)Lkg/k;
    .locals 13

    .line 1
    sget-object v0, Lig/m0;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating allocator, preferDirect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v2, "io.grpc.netty.shaded.io.netty.allocator.maxOrder"

    .line 2
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing maxOrder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/16 v9, 0x8

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lkg/d0;->B()I

    move-result v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default maxOrder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move v9, v2

    .line 6
    :goto_0
    new-instance v0, Lkg/d0;

    .line 7
    invoke-static {}, Lkg/d0;->E()I

    move-result v6

    if-eqz p0, :cond_1

    .line 8
    invoke-static {}, Lkg/d0;->D()I

    move-result v1

    move v7, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 9
    :goto_1
    invoke-static {}, Lkg/d0;->F()I

    move-result v8

    .line 10
    invoke-static {}, Lkg/d0;->H()I

    move-result v10

    .line 11
    invoke-static {}, Lkg/d0;->C()I

    move-result v11

    .line 12
    invoke-static {}, Lkg/d0;->I()Z

    move-result v12

    move-object v4, v0

    move v5, p0

    invoke-direct/range {v4 .. v12}, Lkg/d0;-><init>(ZIIIIIIZ)V

    return-object v0
.end method

.method private static i(ILjava/util/concurrent/ThreadFactory;)Lio/grpc/netty/shaded/io/netty/channel/m0;
    .locals 5

    .line 1
    sget-object v0, Lig/m0;->r:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Epoll is not available"

    invoke-static {v3, v4}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/m0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot create Epoll EventLoopGroup"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static j()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.grpc.netty.shaded.io.netty.channel.epoll.o"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load EpollSocketChannel"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static k()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.grpc.netty.shaded.io.netty.channel.epoll.i"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/m0;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/util/concurrent/ThreadFactory;

    aput-object v3, v1, v2

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EpollEventLoopGroup constructor not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load EpollEventLoopGroup"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static l()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/z0;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.grpc.netty.shaded.io.netty.channel.epoll.m"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/z0;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load EpollServerSocketChannel"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static m(Z)Lkg/k;
    .locals 6

    const-string v0, "io.grpc.netty.shaded.io.grpc.netty.useCustomAllocator"

    const-string v1, "true"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lkg/d0;->G()Z

    move-result v0

    .line 4
    sget-object v1, Lig/m0;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Using custom allocator: forceHeapBuffer=%s, defaultPreferDirect=%s"

    .line 7
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lig/m0$c;->a()Lkg/k;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lig/m0$d;->a()Lkg/k;

    move-result-object p0

    return-object p0

    .line 11
    :cond_2
    sget-object p0, Lig/m0;->a:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Using default allocator"

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 12
    sget-object p0, Lkg/k;->a:Lkg/k;

    return-object p0
.end method

.method private static n(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/r;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lig/m0;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "lg.b"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelOption("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not available"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method private static o()Ljava/lang/Throwable;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Llg/a;

    sget v1, Llg/a;->b:I

    const-string v1, "unavailabilityCause"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0
.end method

.method static p()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Llg/a;

    sget v2, Llg/a;->b:I

    const-string v2, "isAvailable"

    new-array v3, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while checking Epoll availability"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    return v0
.end method

.method static q()Lio/grpc/netty/shaded/io/netty/channel/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "TCP_USER_TIMEOUT"

    invoke-static {v0}, Lig/m0;->n(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/r;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lio/grpc/netty/shaded/io/netty/channel/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "Lio/grpc/netty/shaded/io/netty/channel/z0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lig/m0$a;

    invoke-direct {v0}, Lig/m0$a;-><init>()V

    return-object v0
.end method

.method public static s(Ljava/lang/Throwable;)Lio/grpc/Status;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v2, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    if-eq v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    sget-object p0, Lio/grpc/Status;->h:Lio/grpc/Status;

    const-string v1, "channel closed"

    invoke-virtual {p0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    instance-of v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_2

    .line 8
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "ssl exception"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 10
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "io exception"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    instance-of v1, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-eqz v1, :cond_4

    .line 12
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "unresolved address"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    instance-of v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    if-eqz v1, :cond_5

    .line 14
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v1, "http2 exception"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method
