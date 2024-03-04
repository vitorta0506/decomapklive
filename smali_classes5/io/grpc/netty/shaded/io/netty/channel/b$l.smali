.class final Lio/grpc/netty/shaded/io/netty/channel/b$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation


# static fields
.field private static final f:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lio/grpc/netty/shaded/io/netty/channel/b$l;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Z

.field private static final h:I


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lio/grpc/netty/shaded/io/netty/channel/b$l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/grpc/netty/shaded/io/netty/channel/b;

.field private c:Ljava/lang/Object;

.field private d:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/b$l$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/b$l$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->f:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    const-string v0, "io.grpc.netty.shaded.io.netty.transport.estimateSizeOnSubmit"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->g:Z

    const-string v0, "io.grpc.netty.shaded.io.netty.transport.writeTaskSizeOverhead"

    const/16 v1, 0x20

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->h:I

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/b$l;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;Lio/grpc/netty/shaded/io/netty/channel/b$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b$l;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->j0(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->e:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->g1(J)V

    :cond_0
    return-void
.end method

.method protected static d(Lio/grpc/netty/shaded/io/netty/channel/b$l;Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->c:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 4
    sget-boolean p3, Lio/grpc/netty/shaded/io/netty/channel/b$l;->g:Z

    if-eqz p3, :cond_0

    .line 5
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->j0(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object p3

    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->k1()Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/grpc/netty/shaded/io/netty/channel/r0$a;->size(Ljava/lang/Object;)I

    move-result p2

    sget p3, Lio/grpc/netty/shaded/io/netty/channel/b$l;->h:I

    add-int/2addr p2, p3

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->e:I

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->j0(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object p1

    iget p2, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->e:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->u1(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->e:I

    :goto_0
    if-eqz p4, :cond_1

    .line 8
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->e:I

    const/high16 p2, -0x80000000

    or-int/2addr p1, p2

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->e:I

    :cond_1
    return-void
.end method

.method static f(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;Z)Lio/grpc/netty/shaded/io/netty/channel/b$l;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->f:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/b$l;

    .line 2
    invoke-static {v0, p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->d(Lio/grpc/netty/shaded/io/netty/channel/b$l;Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;Z)V

    return-object v0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->c:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->g()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->g()V

    .line 3
    throw v0
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->c()V

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->e:I

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->c:Ljava/lang/Object;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/b;->g1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->c:Ljava/lang/Object;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/b$l;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/b;->i1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->g()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->g()V

    .line 6
    throw v0
.end method
