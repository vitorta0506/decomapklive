.class public Lio/grpc/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/f$f;,
        Lio/grpc/internal/f$g;,
        Lio/grpc/internal/f$h;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/l1$b;

.field private final b:Lio/grpc/internal/g;

.field private final c:Lio/grpc/internal/l1;


# direct methods
.method constructor <init>(Lio/grpc/internal/l1$b;Lio/grpc/internal/f$h;Lio/grpc/internal/l1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/internal/h2;

    const-string v1, "listener"

    .line 3
    invoke-static {p1, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/l1$b;

    invoke-direct {v0, p1}, Lio/grpc/internal/h2;-><init>(Lio/grpc/internal/l1$b;)V

    iput-object v0, p0, Lio/grpc/internal/f;->a:Lio/grpc/internal/l1$b;

    .line 4
    new-instance p1, Lio/grpc/internal/g;

    invoke-direct {p1, v0, p2}, Lio/grpc/internal/g;-><init>(Lio/grpc/internal/l1$b;Lio/grpc/internal/g$d;)V

    iput-object p1, p0, Lio/grpc/internal/f;->b:Lio/grpc/internal/g;

    .line 5
    invoke-virtual {p3, p1}, Lio/grpc/internal/l1;->w(Lio/grpc/internal/l1$b;)V

    .line 6
    iput-object p3, p0, Lio/grpc/internal/f;->c:Lio/grpc/internal/l1;

    return-void
.end method

.method static synthetic a(Lio/grpc/internal/f;)Lio/grpc/internal/l1;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/f;->c:Lio/grpc/internal/l1;

    return-object p0
.end method

.method static synthetic f(Lio/grpc/internal/f;)Lio/grpc/internal/g;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/f;->b:Lio/grpc/internal/g;

    return-object p0
.end method


# virtual methods
.method public b(I)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/f;->a:Lio/grpc/internal/l1$b;

    new-instance v1, Lio/grpc/internal/f$g;

    new-instance v2, Lio/grpc/internal/f$a;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/f$a;-><init>(Lio/grpc/internal/f;I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lio/grpc/internal/f$g;-><init>(Lio/grpc/internal/f;Ljava/lang/Runnable;Lio/grpc/internal/f$a;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/l1$b;->a(Lio/grpc/internal/k2$a;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/f;->c:Lio/grpc/internal/l1;

    invoke-virtual {v0, p1}, Lio/grpc/internal/l1;->c(I)V

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/f;->c:Lio/grpc/internal/l1;

    invoke-virtual {v0}, Lio/grpc/internal/l1;->y()V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/f;->a:Lio/grpc/internal/l1$b;

    new-instance v1, Lio/grpc/internal/f$g;

    new-instance v2, Lio/grpc/internal/f$e;

    invoke-direct {v2, p0}, Lio/grpc/internal/f$e;-><init>(Lio/grpc/internal/f;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/f$g;-><init>(Lio/grpc/internal/f;Ljava/lang/Runnable;Lio/grpc/internal/f$a;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/l1$b;->a(Lio/grpc/internal/k2$a;)V

    return-void
.end method

.method public d(Lio/grpc/u;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/f;->c:Lio/grpc/internal/l1;

    invoke-virtual {v0, p1}, Lio/grpc/internal/l1;->d(Lio/grpc/u;)V

    return-void
.end method

.method public e(Lio/grpc/internal/v1;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/f;->a:Lio/grpc/internal/l1$b;

    new-instance v1, Lio/grpc/internal/f$f;

    new-instance v2, Lio/grpc/internal/f$b;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/f$b;-><init>(Lio/grpc/internal/f;Lio/grpc/internal/v1;)V

    new-instance v3, Lio/grpc/internal/f$c;

    invoke-direct {v3, p0, p1}, Lio/grpc/internal/f$c;-><init>(Lio/grpc/internal/f;Lio/grpc/internal/v1;)V

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/f$f;-><init>(Lio/grpc/internal/f;Ljava/lang/Runnable;Ljava/io/Closeable;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/l1$b;->a(Lio/grpc/internal/k2$a;)V

    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/f;->a:Lio/grpc/internal/l1$b;

    new-instance v1, Lio/grpc/internal/f$g;

    new-instance v2, Lio/grpc/internal/f$d;

    invoke-direct {v2, p0}, Lio/grpc/internal/f$d;-><init>(Lio/grpc/internal/f;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/f$g;-><init>(Lio/grpc/internal/f;Ljava/lang/Runnable;Lio/grpc/internal/f$a;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/l1$b;->a(Lio/grpc/internal/k2$a;)V

    return-void
.end method
