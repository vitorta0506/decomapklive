.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/l;
.super Lio/grpc/netty/shaded/io/netty/util/b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;


# static fields
.field private static final e:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/l;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Ljava/security/cert/X509Certificate;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->b()Lio/grpc/netty/shaded/io/netty/util/t;

    move-result-object v0

    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/t;->c(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->e:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    return-void
.end method

.method constructor <init>(JJ[Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/b;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->c:J

    .line 3
    iput-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->d:J

    .line 4
    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->b:[Ljava/security/cert/X509Certificate;

    .line 5
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->e:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/handler/ssl/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 3
    :cond_0
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public b(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 3
    :cond_0
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
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->d:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method protected deallocate()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->c:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->c:J

    .line 3
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->d:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 4
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->d:J

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/v;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e()Lio/grpc/netty/shaded/io/netty/handler/ssl/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 3
    :cond_0
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->touch()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public f()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->b:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/v;->a(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public m()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->c:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method public release()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 3
    :cond_0
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/b;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->b(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l;->h(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/l;

    move-result-object p1

    return-object p1
.end method
