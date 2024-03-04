.class public final Lio/grpc/alts/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/l$b;,
        Lio/grpc/alts/internal/l$d;,
        Lio/grpc/alts/internal/l$c;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/alts/internal/l$c;

.field private final b:Lio/grpc/alts/internal/l$d;


# direct methods
.method public constructor <init>(ILio/grpc/alts/internal/p;Lkg/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p2}, Lio/grpc/alts/internal/p;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    const/high16 v0, 0x100000

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    new-instance v0, Lio/grpc/alts/internal/l$c;

    invoke-direct {v0, p1, p2}, Lio/grpc/alts/internal/l$c;-><init>(ILio/grpc/alts/internal/p;)V

    iput-object v0, p0, Lio/grpc/alts/internal/l;->a:Lio/grpc/alts/internal/l$c;

    .line 5
    new-instance p1, Lio/grpc/alts/internal/l$d;

    invoke-direct {p1, p2, p3}, Lio/grpc/alts/internal/l$d;-><init>(Lio/grpc/alts/internal/p;Lkg/k;)V

    iput-object p1, p0, Lio/grpc/alts/internal/l;->b:Lio/grpc/alts/internal/l$d;

    return-void
.end method

.method static synthetic c(Lkg/j;I)Lkg/j;
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/alts/internal/l;->f(Lkg/j;I)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static d()I
    .locals 1

    const/high16 v0, 0x20000

    return v0
.end method

.method public static e()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method private static f(Lkg/j;I)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/j;->t2()I

    move-result v0

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 2
    invoke-virtual {p0}, Lkg/j;->K2()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lkg/j;->K2()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lkg/j;->L2(I)Lkg/j;

    .line 4
    invoke-virtual {v0, v1}, Lkg/j;->L2(I)Lkg/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lkg/j;Ljava/util/List;Lkg/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lkg/k;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/alts/internal/l;->b:Lio/grpc/alts/internal/l$d;

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/alts/internal/l$d;->g(Lkg/j;Ljava/util/List;Lkg/k;)V

    return-void
.end method

.method public b(Ljava/util/List;Lio/grpc/alts/internal/f0$a;Lkg/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkg/j;",
            ">;",
            "Lio/grpc/alts/internal/f0$a<",
            "Lkg/j;",
            ">;",
            "Lkg/k;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/alts/internal/l;->a:Lio/grpc/alts/internal/l$c;

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/alts/internal/l$c;->c(Ljava/util/List;Lio/grpc/alts/internal/f0$a;Lkg/k;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/alts/internal/l;->b:Lio/grpc/alts/internal/l$d;

    invoke-virtual {v0}, Lio/grpc/alts/internal/l$d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/l;->a:Lio/grpc/alts/internal/l$c;

    invoke-virtual {v0}, Lio/grpc/alts/internal/l$c;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/alts/internal/l;->a:Lio/grpc/alts/internal/l$c;

    invoke-virtual {v1}, Lio/grpc/alts/internal/l$c;->a()V

    throw v0
.end method
