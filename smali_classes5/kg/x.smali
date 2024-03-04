.class final Lkg/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkg/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkg/y;"
    }
.end annotation


# static fields
.field private static final j:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lkg/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lkg/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:I

.field private i:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lkg/x;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lkg/x;->j:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lkg/v;Lkg/x;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "TT;>;",
            "Lkg/x<",
            "TT;>;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkg/x;->a:Lkg/v;

    .line 3
    iput-object p2, p0, Lkg/x;->b:Lkg/x;

    .line 4
    iput p3, p0, Lkg/x;->c:I

    .line 5
    iput p4, p0, Lkg/x;->d:I

    .line 6
    invoke-static {p3, p5}, Lkg/x;->g(II)I

    move-result p1

    iput p1, p0, Lkg/x;->e:I

    const/4 p1, 0x0

    const-wide v0, 0x3feffffffaa19c47L    # 0.99999999

    const/16 p2, 0x64

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-ne p4, p2, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    int-to-double v4, p5

    int-to-double v6, p4

    sub-double v6, v2, v6

    add-double/2addr v6, v0

    mul-double v4, v4, v6

    div-double/2addr v4, v2

    double-to-int p4, v4

    .line 7
    :goto_0
    iput p4, p0, Lkg/x;->g:I

    if-ne p3, p2, :cond_1

    goto :goto_1

    :cond_1
    int-to-double p1, p5

    int-to-double p3, p3

    sub-double p3, v2, p3

    add-double/2addr p3, v0

    mul-double p1, p1, p3

    div-double/2addr p1, v2

    double-to-int p1, p1

    .line 8
    :goto_1
    iput p1, p0, Lkg/x;->h:I

    return-void
.end method

.method private B(Lkg/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/x;->f:Lkg/w;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p1, Lkg/w;->p:Lkg/w;

    iput-object p1, p0, Lkg/x;->f:Lkg/w;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lkg/w;->o:Lkg/w;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lkg/w;->p:Lkg/w;

    .line 5
    iget-object p1, p1, Lkg/w;->o:Lkg/w;

    iput-object v0, p1, Lkg/w;->p:Lkg/w;

    if-eqz v0, :cond_1

    .line 6
    iput-object p1, v0, Lkg/w;->o:Lkg/w;

    :cond_1
    :goto_0
    return-void
.end method

.method private static g(II)I
    .locals 4

    .line 1
    invoke-static {p0}, Lkg/x;->u(I)I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p1

    int-to-long p0, p0

    const-wide/16 v2, 0x64

    sub-long p0, v2, p0

    mul-long v0, v0, p0

    .line 2
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static u(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private x(Lkg/w;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p1, Lkg/w;->l:I

    iget v1, p0, Lkg/x;->h:I

    if-le v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lkg/x;->y(Lkg/w;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkg/x;->d(Lkg/w;)V

    const/4 p1, 0x1

    return p1
.end method

.method private y(Lkg/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/x;->i:Lkg/x;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {v0, p1}, Lkg/x;->x(Lkg/w;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method c(Lkg/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lkg/w;->l:I

    iget v1, p0, Lkg/x;->g:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkg/x;->b:Lkg/x;

    invoke-virtual {v0, p1}, Lkg/x;->c(Lkg/w;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkg/x;->d(Lkg/w;)V

    return-void
.end method

.method d(Lkg/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p0, p1, Lkg/w;->n:Lkg/x;

    .line 2
    iget-object v0, p0, Lkg/x;->f:Lkg/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lkg/x;->f:Lkg/w;

    .line 4
    iput-object v1, p1, Lkg/w;->o:Lkg/w;

    .line 5
    iput-object v1, p1, Lkg/w;->p:Lkg/w;

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p1, Lkg/w;->o:Lkg/w;

    .line 7
    iput-object v0, p1, Lkg/w;->p:Lkg/w;

    .line 8
    iput-object p1, v0, Lkg/w;->o:Lkg/w;

    .line 9
    iput-object p1, p0, Lkg/x;->f:Lkg/w;

    :goto_0
    return-void
.end method

.method f(Lkg/c0;IILkg/b0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;II",
            "Lkg/b0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/x;->a:Lkg/v;

    invoke-virtual {v0, p3}, Lkg/q0;->l(I)I

    move-result v0

    .line 2
    iget v1, p0, Lkg/x;->e:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lkg/x;->f:Lkg/w;

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/w;->b(Lkg/c0;IILkg/b0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget p1, v0, Lkg/w;->l:I

    iget p2, p0, Lkg/x;->g:I

    if-gt p1, p2, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lkg/x;->B(Lkg/w;)V

    .line 7
    iget-object p1, p0, Lkg/x;->b:Lkg/x;

    invoke-virtual {p1, v0}, Lkg/x;->c(Lkg/w;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    iget-object v0, v0, Lkg/w;->p:Lkg/w;

    goto :goto_0

    :cond_3
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkg/z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/x;->a:Lkg/v;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lkg/x;->f:Lkg/w;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lkg/x;->j:Ljava/util/Iterator;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lkg/x;->f:Lkg/w;

    .line 6
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, v2, Lkg/w;->p:Lkg/w;

    if-nez v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method m(Lkg/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/x;->f:Lkg/w;

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lkg/v;->r(Lkg/w;)V

    .line 3
    iget-object v0, v0, Lkg/w;->p:Lkg/w;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkg/x;->f:Lkg/w;

    return-void
.end method

.method n(Lkg/w;JILjava/nio/ByteBuffer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;JI",
            "Ljava/nio/ByteBuffer;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3, p4, p5}, Lkg/w;->k(JILjava/nio/ByteBuffer;)V

    .line 2
    iget p2, p1, Lkg/w;->l:I

    iget p3, p0, Lkg/x;->h:I

    if-le p2, p3, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lkg/x;->B(Lkg/w;)V

    .line 4
    invoke-direct {p0, p1}, Lkg/x;->y(Lkg/w;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lkg/x;->a:Lkg/v;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lkg/x;->f:Lkg/w;

    if-nez v2, :cond_0

    const-string v0, "none"

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, v2, Lkg/w;->p:Lkg/w;

    if-nez v2, :cond_1

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    :try_start_1
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method z(Lkg/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/x<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/x;->i:Lkg/x;

    return-void
.end method
