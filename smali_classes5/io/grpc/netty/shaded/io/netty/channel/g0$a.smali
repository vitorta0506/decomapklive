.class public abstract Lio/grpc/netty/shaded/io/netty/channel/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/v0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field private a:Lio/grpc/netty/shaded/io/netty/channel/f;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Z

.field private final h:Lio/grpc/netty/shaded/io/netty/util/w;

.field final synthetic i:Lio/grpc/netty/shaded/io/netty/channel/g0;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->i:Lio/grpc/netty/shaded/io/netty/channel/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/g0;->d(Lio/grpc/netty/shaded/io/netty/channel/g0;)Z

    move-result p1

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->g:Z

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/g0$a$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/g0$a$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/g0$a;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->h:Lio/grpc/netty/shaded/io/netty/util/w;

    return-void
.end method

.method static synthetic l(Lio/grpc/netty/shaded/io/netty/channel/g0$a;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->e:I

    return p0
.end method

.method static synthetic m(Lio/grpc/netty/shaded/io/netty/channel/g0$a;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->f:I

    return p0
.end method


# virtual methods
.method public a(Lkg/k;)Lkg/j;
    .locals 1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->i()I

    move-result v0

    invoke-interface {p1, v0}, Lkg/k;->d(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->e:I

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/f;

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->i:Lio/grpc/netty/shaded/io/netty/channel/g0;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/g0;->c()I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->b:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->d:I

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->c:I

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->c:I

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/util/w;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/f;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/w;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->c:I

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->b:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->i:Lio/grpc/netty/shaded/io/netty/channel/g0;

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/g0;->e(Lio/grpc/netty/shaded/io/netty/channel/g0;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->d:I

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->h:Lio/grpc/netty/shaded/io/netty/util/w;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->f(Lio/grpc/netty/shaded/io/netty/util/w;)Z

    move-result v0

    return v0
.end method

.method public h(I)V
    .locals 1

    .line 1
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->f:I

    if-lez p1, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->d:I

    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->e:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->f:I

    return v0
.end method

.method protected final n()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->d:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    return v0
.end method
