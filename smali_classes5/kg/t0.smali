.class public final Lkg/t0;
.super Lkg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/t0$g;,
        Lkg/t0$b;,
        Lkg/t0$d;,
        Lkg/t0$f;,
        Lkg/t0$c;,
        Lkg/t0$e;
    }
.end annotation


# static fields
.field public static final g:Lkg/t0;


# instance fields
.field private final d:Lkg/t0$g;

.field private final e:Z

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkg/t0;

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v()Z

    move-result v1

    invoke-direct {v0, v1}, Lkg/t0;-><init>(Z)V

    sput-object v0, Lkg/t0;->g:Lkg/t0;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkg/t0;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->X0()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lkg/t0;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lkg/b;-><init>(Z)V

    .line 4
    new-instance p1, Lkg/t0$g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkg/t0$g;-><init>(Lkg/t0$a;)V

    iput-object p1, p0, Lkg/t0;->d:Lkg/t0$g;

    .line 5
    iput-boolean p2, p0, Lkg/t0;->e:Z

    if-eqz p3, :cond_0

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lkg/t0;->f:Z

    return-void
.end method


# virtual methods
.method public a(I)Lkg/o;
    .locals 2

    .line 1
    new-instance v0, Lkg/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lkg/o;-><init>(Lkg/k;ZI)V

    .line 2
    iget-boolean p1, p0, Lkg/t0;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkg/b;->r(Lkg/o;)Lkg/o;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(I)Lkg/o;
    .locals 2

    .line 1
    new-instance v0, Lkg/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lkg/o;-><init>(Lkg/k;ZI)V

    .line 2
    iget-boolean p1, p0, Lkg/t0;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkg/b;->r(Lkg/o;)Lkg/o;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected o(II)Lkg/j;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lkg/t0;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lkg/t0$f;

    invoke-direct {v0, p0, p1, p2}, Lkg/t0$f;-><init>(Lkg/t0;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkg/t0$d;

    invoke-direct {v0, p0, p1, p2}, Lkg/t0$d;-><init>(Lkg/t0;II)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lkg/t0$b;

    invoke-direct {v0, p0, p1, p2}, Lkg/t0$b;-><init>(Lkg/t0;II)V

    .line 4
    :goto_0
    iget-boolean p1, p0, Lkg/t0;->e:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkg/b;->q(Lkg/j;)Lkg/j;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method protected p(II)Lkg/j;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkg/t0$e;

    invoke-direct {v0, p0, p1, p2}, Lkg/t0$e;-><init>(Lkg/t0;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkg/t0$c;

    invoke-direct {v0, p0, p1, p2}, Lkg/t0$c;-><init>(Lkg/t0;II)V

    :goto_0
    return-object v0
.end method

.method t(I)V
    .locals 3

    iget-object v0, p0, Lkg/t0;->d:Lkg/t0$g;

    iget-object v0, v0, Lkg/t0$g;->a:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    neg-int p1, p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->add(J)V

    return-void
.end method

.method u(I)V
    .locals 3

    iget-object v0, p0, Lkg/t0;->d:Lkg/t0$g;

    iget-object v0, v0, Lkg/t0$g;->b:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    neg-int p1, p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->add(J)V

    return-void
.end method

.method v(I)V
    .locals 3

    iget-object v0, p0, Lkg/t0;->d:Lkg/t0$g;

    iget-object v0, v0, Lkg/t0$g;->a:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->add(J)V

    return-void
.end method

.method w(I)V
    .locals 3

    iget-object v0, p0, Lkg/t0;->d:Lkg/t0$g;

    iget-object v0, v0, Lkg/t0$g;->b:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->add(J)V

    return-void
.end method
