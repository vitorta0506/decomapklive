.class abstract Lkg/d;
.super Lkg/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/d$b;,
        Lkg/d$a;
    }
.end annotation


# instance fields
.field private final n:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/d;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lkg/a;

.field private p:Lkg/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkg/d;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "+",
            "Lkg/d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkg/e;-><init>(I)V

    .line 2
    iput-object p1, p0, Lkg/d;->n:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    return-void
.end method


# virtual methods
.method protected final C3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/d;->p:Lkg/j;

    .line 2
    iget-object v1, p0, Lkg/d;->n:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    invoke-interface {v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$a;->a(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void
.end method

.method final F3()Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    new-instance v0, Lkg/d$a;

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lkg/d$a;-><init>(Lkg/j;Lkg/a;)V

    return-object v0
.end method

.method final G3(Lkg/a;Lkg/j;III)Lkg/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lkg/d;",
            ">(",
            "Lkg/a;",
            "Lkg/j;",
            "III)TU;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->T1()Lkg/j;

    .line 2
    iput-object p2, p0, Lkg/d;->p:Lkg/j;

    .line 3
    iput-object p1, p0, Lkg/d;->o:Lkg/a;

    .line 4
    :try_start_0
    invoke-virtual {p0, p5}, Lkg/a;->t3(I)V

    .line 5
    invoke-virtual {p0, p3, p4}, Lkg/a;->y3(II)V

    .line 6
    invoke-virtual {p0}, Lkg/e;->E3()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const/4 p3, 0x0

    .line 7
    iput-object p3, p0, Lkg/d;->o:Lkg/a;

    iput-object p3, p0, Lkg/d;->p:Lkg/j;

    .line 8
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 9
    throw p1
.end method

.method final H3(Lkg/j;)V
    .locals 0

    iput-object p1, p0, Lkg/d;->p:Lkg/j;

    return-void
.end method

.method public final I3()Lkg/a;
    .locals 1

    iget-object v0, p0, Lkg/d;->o:Lkg/a;

    return-object v0
.end method

.method public final P()Lkg/k;
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->P()Lkg/k;

    move-result-object v0

    return-object v0
.end method

.method public final W1()Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lkg/a;->v3(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public a1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->a1()Z

    move-result v0

    return v0
.end method

.method public b1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->b1()Z

    move-result v0

    return v0
.end method

.method public final e1(II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public g1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->g1()Z

    move-result v0

    return v0
.end method

.method public final h1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->h1()Z

    move-result v0

    return v0
.end method

.method public i1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/a;->i1()Z

    move-result v0

    return v0
.end method

.method public n2(II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    new-instance v0, Lkg/d$b;

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lkg/d$b;-><init>(Lkg/j;Lkg/a;II)V

    return-object v0
.end method

.method public final s1()I
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->s1()I

    move-result v0

    return v0
.end method

.method public bridge synthetic s2()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    return-object v0
.end method

.method public final v1()Ljava/nio/ByteOrder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public y()[B
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->y()[B

    move-result-object v0

    return-object v0
.end method
