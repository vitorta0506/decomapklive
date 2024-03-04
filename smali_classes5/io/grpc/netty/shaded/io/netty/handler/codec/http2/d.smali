.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$h;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;
    }
.end annotation


# static fields
.field private static final i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field final a:Ltg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/e<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;

.field final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$d;

.field final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

.field h:Lug/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/x<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ltg/d;

    invoke-direct {v0}, Ltg/d;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->a:Ltg/e;

    .line 4
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;

    .line 5
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$d;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$d;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    .line 7
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-direct {v3, p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;Ljava/util/List;)V

    iput-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    .line 8
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    if-eqz p1, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    invoke-direct {v2, p0, p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ZI)V

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    .line 9
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {v2, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ZI)V

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    .line 10
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->G()I

    move-result p1

    invoke-interface {v0, p1, v1}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic p()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method static q(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;ZZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    .line 2
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    return-object p0

    .line 3
    :cond_0
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to open a stream in an invalid state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    .line 4
    :cond_1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    return-object p0

    :cond_2
    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    .line 5
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_0

    :cond_3
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_0

    :cond_4
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->OPEN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    :goto_0
    return-object p0
.end method

.method private r(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)V

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-void
.end method

.method private t()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->a:Ltg/e;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    return-object v0
.end method

.method public c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->a:Ltg/e;

    invoke-interface {v0, p1}, Ltg/e;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-object p1
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    return-object v0
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(IJLkg/j;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->t()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->t()I

    move-result v0

    if-ne p1, v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->t()I

    move-result v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    .line 5
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->t()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "Last stream identifier must not increase between sending multiple GOAWAY frames (was \'%d\', is \'%d\')."

    .line 6
    invoke-static {p2, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;I)V

    .line 8
    :goto_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 9
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;->d(IJLkg/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 10
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "Caught Throwable from listener onGoAwaySent."

    invoke-interface {v3, v4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->r(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)V

    return v1
.end method

.method public i(Lug/x;)Lug/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/x<",
            "Ljava/lang/Void;",
            ">;)",
            "Lug/q<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "promise"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, p1, Lio/grpc/netty/shaded/io/netty/channel/y;

    if-eqz v1, :cond_1

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    invoke-static {v0, p1}, Lug/z;->a(Lug/q;Lug/x;)Lug/q;

    goto :goto_0

    .line 6
    :cond_2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    .line 7
    :goto_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Lug/x;->B(Ljava/lang/Object;)Z

    return-object p1

    .line 9
    :cond_3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->a:Ltg/e;

    invoke-interface {p1}, Ltg/e;->entries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->g()V

    .line 12
    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltg/e$a;

    invoke-interface {v0}, Ltg/e$a;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    .line 14
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->G()I

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->r(Ljava/util/Iterator;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e()V

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e()V

    .line 17
    throw p1

    .line 18
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltg/e$a;

    invoke-interface {v0}, Ltg/e$a;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 20
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    goto :goto_2

    .line 22
    :cond_7
    :goto_3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    return-object p1
.end method

.method public j(IJLkg/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->t()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->t()I

    move-result v0

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    .line 3
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->t()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const-string p1, "lastStreamId MUST NOT increase. Current value: %d new value: %d"

    .line 4
    invoke-static {p2, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;I)V

    .line 6
    :goto_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;->e(IJLkg/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 8
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Caught Throwable from listener onGoAwayReceived."

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->r(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)V

    return-void
.end method

.method public k(I)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->p(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->p(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    return-object p1
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->i()Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->i()I

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final s()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;

    invoke-interface {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Caught Throwable from listener onStreamClosed."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;

    invoke-interface {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Caught Throwable from listener onStreamHalfClosed."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->a:Ltg/e;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->G()I

    move-result v2

    invoke-interface {p2, v2}, Ltg/e;->remove(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    :goto_1
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 4
    :try_start_0
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 5
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Caught Throwable from listener onStreamRemoved."

    invoke-interface {v1, v2, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->h:Lug/x;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lug/x;->B(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method final x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;
    .locals 1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    invoke-virtual {p1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    move-result-object p1

    return-object p1
.end method
