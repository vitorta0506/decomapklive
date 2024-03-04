.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;
.super Lpg/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg/k<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final l:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

.field private static final m:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

.field private static final n:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

.field private static final o:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;


# instance fields
.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    sget-object v3, Lkg/s0;->d:Lkg/j;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->P:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    .line 4
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->L:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    invoke-direct {v2, v1, v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;)V

    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->n:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    .line 5
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    invoke-direct {v5, v1, v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;)V

    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->o:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    .line 6
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 7
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 8
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 9
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->s:Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->n:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lpg/k;-><init>(I)V

    .line 3
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->j:Z

    return-void
.end method

.method static synthetic Q()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method private static T(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;ILio/grpc/netty/shaded/io/netty/channel/w;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/q;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/q;

    invoke-interface {p2, p0}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 3
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;->u()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    .line 5
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;J)J

    move-result-wide v0

    int-to-long p0, p1

    cmp-long v2, v0, p0

    if-gtz v2, :cond_1

    .line 6
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;->u()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/q;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/q;

    invoke-interface {p2, p0}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 8
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->o:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;->u()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic F(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->W(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V

    return-void
.end method

.method protected G(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;->CLIENT_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic I(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->a0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic J(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->b0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;I)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic K(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->c0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic L(Lkg/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic M(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->e0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic N(Ljava/lang/Object;ILio/grpc/netty/shaded/io/netty/channel/w;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->f0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;ILio/grpc/netty/shaded/io/netty/channel/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected R(Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    :cond_0
    return-void
.end method

.method protected S(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Z)V

    .line 2
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    :goto_0
    return-object v0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method protected U(Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 3
    invoke-interface {p1}, Lkg/l;->content()Lkg/j;

    move-result-object p1

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    :cond_0
    return-void
.end method

.method protected W(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->o:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;->u()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->n:Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;->u()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p2

    .line 6
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_1
    return-void

    .line 7
    :cond_2
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 9
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response entity too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected a0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    return p1
.end method

.method protected b0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;I)Z
    .locals 4

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p1, p2

    cmp-long v3, v0, p1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :catch_0
    :cond_0
    return v2
.end method

.method protected c0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    return p1
.end method

.method protected d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    return p1
.end method

.method protected e0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    return p1
.end method

.method protected f0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;ILio/grpc/netty/shaded/io/netty/channel/w;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->T(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;ILio/grpc/netty/shaded/io/netty/channel/w;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    sget-object p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->I:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    :cond_0
    return-object p2
.end method

.method protected bridge synthetic v(Lkg/l;Lkg/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->R(Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;)V

    return-void
.end method

.method protected bridge synthetic x(Ljava/lang/Object;Lkg/j;)Lkg/l;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->S(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    move-result-object p1

    return-object p1
.end method

.method protected y(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->G(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic z(Lkg/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->U(Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;)V

    return-void
.end method
