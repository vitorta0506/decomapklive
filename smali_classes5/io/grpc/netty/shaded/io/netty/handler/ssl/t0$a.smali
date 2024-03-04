.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;
.super Lio/grpc/netty/shaded/io/netty/util/b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:J

.field private final b:[Ljava/security/cert/X509Certificate;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;J[Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/b;-><init>()V

    .line 2
    iput-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->a:J

    if-nez p4, :cond_0

    .line 3
    sget-object p4, Lio/grpc/netty/shaded/io/netty/util/internal/h;->k:[Ljava/security/cert/X509Certificate;

    :cond_0
    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->b:[Ljava/security/cert/X509Certificate;

    .line 4
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->a:J

    return-void
.end method


# virtual methods
.method public b(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/b;->retain(I)Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method protected deallocate()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->a()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/b;->release()Z

    return-void
.end method

.method public e()Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->i()Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    return-object p0
.end method

.method public f()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->b:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->j(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    return-object p0
.end method

.method public m()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->a:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method public retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 0

    .line 3
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->b(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;->h(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object p1

    return-object p1
.end method
