.class public abstract Lkg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkg/k;


# instance fields
.field private final b:Z

.field private final c:Lkg/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkg/b;

    const-string v1, "toLeakAwareBuffer"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->d(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkg/b;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lkg/b;->b:Z

    .line 4
    new-instance p1, Lkg/r;

    invoke-direct {p1, p0}, Lkg/r;-><init>(Lkg/k;)V

    iput-object p1, p0, Lkg/b;->c:Lkg/j;

    return-void
.end method

.method protected static q(Lkg/j;)Lkg/j;
    .locals 2

    .line 1
    sget-object v0, Lkg/b$a;->a:[I

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->f()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lkg/a;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Lkg/h;

    invoke-direct {v1, p0, v0}, Lkg/h;-><init>(Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lkg/a;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Lkg/o0;

    invoke-direct {v1, p0, v0}, Lkg/o0;-><init>(Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V

    :goto_0
    move-object p0, v1

    :cond_2
    :goto_1
    return-object p0
.end method

.method protected static r(Lkg/o;)Lkg/o;
    .locals 2

    .line 1
    sget-object v0, Lkg/b$a;->a:[I

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->f()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lkg/a;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Lkg/i;

    invoke-direct {v1, p0, v0}, Lkg/i;-><init>(Lkg/o;Lio/grpc/netty/shaded/io/netty/util/v;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lkg/a;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Lkg/p0;

    invoke-direct {v1, p0, v0}, Lkg/p0;-><init>(Lkg/o;Lio/grpc/netty/shaded/io/netty/util/v;)V

    :goto_0
    move-object p0, v1

    :cond_2
    :goto_1
    return-object p0
.end method

.method private static s(II)V
    .locals 3

    const-string v0, "initialCapacity"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-gt p0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "initialCapacity: %d (expected: not greater than maxCapacity(%d)"

    .line 4
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)Lkg/o;
    .locals 2

    new-instance v0, Lkg/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lkg/o;-><init>(Lkg/k;ZI)V

    invoke-static {v0}, Lkg/b;->r(Lkg/o;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lkg/j;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lkg/b;->f(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public buffer()Lkg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkg/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkg/b;->g()Lkg/j;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkg/b;->k()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public c(II)I
    .locals 3

    const-string v0, "minNewCapacity"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-gt p1, p2, :cond_3

    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-le p1, v0, :cond_2

    .line 2
    div-int/2addr p1, v0

    mul-int p1, p1, v0

    sub-int v1, p2, v0

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int p2, p1, v0

    :goto_0
    return p2

    :cond_2
    const/16 v0, 0x40

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->b(I)I

    move-result p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "minNewCapacity: %d (expected: not greater than maxCapacity(%d)"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I)Lkg/j;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkg/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkg/b;->b(I)Lkg/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lkg/b;->h(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public f(II)Lkg/j;
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lkg/b;->c:Lkg/j;

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lkg/b;->s(II)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lkg/b;->p(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public g()Lkg/j;
    .locals 2

    const/16 v0, 0x100

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lkg/b;->i(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lkg/j;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lkg/b;->i(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public i(II)Lkg/j;
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lkg/b;->c:Lkg/j;

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lkg/b;->s(II)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lkg/b;->o(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public j(II)Lkg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkg/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/b;->i(II)Lkg/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkg/b;->f(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public k()Lkg/j;
    .locals 2

    const/16 v0, 0x100

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lkg/b;->f(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public l(I)Lkg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkg/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lkg/b;->h(I)Lkg/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkg/b;->b(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public m(I)Lkg/o;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkg/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lkg/b;->a(I)Lkg/o;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkg/b;->n(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public n(I)Lkg/o;
    .locals 2

    new-instance v0, Lkg/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lkg/o;-><init>(Lkg/k;ZI)V

    invoke-static {v0}, Lkg/b;->r(Lkg/o;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected abstract o(II)Lkg/j;
.end method

.method protected abstract p(II)Lkg/j;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(directByDefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkg/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
