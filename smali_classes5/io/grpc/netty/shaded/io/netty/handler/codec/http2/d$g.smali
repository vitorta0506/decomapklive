.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;

.field private c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

.field private d:B

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;

    .line 3
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->a:I

    .line 4
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    return-void
.end method


# virtual methods
.method public final G()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->a:I

    return v0
.end method

.method public final a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$b;->a:[I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    return-object p0
.end method

.method public close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->r(Ljava/util/Iterator;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;",
            "TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->a:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->t()Z

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->q(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;ZZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->s()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->q()V

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum active streams violated for this endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->A()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public n()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$b;->a:[I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public o(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    if-nez p1, :cond_1

    iget-byte p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    :cond_1
    return-object p0
.end method

.method public p(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    if-nez p1, :cond_1

    iget-byte p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->d:B

    :cond_1
    return-object p0
.end method

.method q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->p(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->o(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V

    return-void
.end method

.method r(Ljava/util/Iterator;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->s()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    move-result-object v0

    iget v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->k:I

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;

    invoke-virtual {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Ljava/util/Iterator;)V

    return-object p0
.end method

.method s()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->a:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    :goto_0
    return-object v0
.end method

.method final t()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->a:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->r(I)Z

    move-result v0

    return v0
.end method
