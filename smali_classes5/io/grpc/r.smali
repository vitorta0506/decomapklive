.class public Lio/grpc/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/r$c;,
        Lio/grpc/r$d;,
        Lio/grpc/r$g;,
        Lio/grpc/r$e;,
        Lio/grpc/r$b;,
        Lio/grpc/r$a;,
        Lio/grpc/r$f;
    }
.end annotation


# static fields
.field static final d:Ljava/util/logging/Logger;

.field public static final e:Lio/grpc/r;


# instance fields
.field final a:Lio/grpc/r$a;

.field final b:Lio/grpc/y0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/y0$d<",
            "Lio/grpc/r$e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/r;->d:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/r;

    invoke-direct {v0}, Lio/grpc/r;-><init>()V

    sput-object v0, Lio/grpc/r;->e:Lio/grpc/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    .line 8
    iput-object v0, p0, Lio/grpc/r;->b:Lio/grpc/y0$d;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lio/grpc/r;->c:I

    .line 10
    invoke-static {v0}, Lio/grpc/r;->t(I)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/r;Lio/grpc/y0$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r;",
            "Lio/grpc/y0$d<",
            "Lio/grpc/r$e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/r;->d(Lio/grpc/r;)Lio/grpc/r$a;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    .line 3
    iput-object p2, p0, Lio/grpc/r;->b:Lio/grpc/y0$d;

    .line 4
    iget p1, p1, Lio/grpc/r;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/r;->c:I

    .line 5
    invoke-static {p1}, Lio/grpc/r;->t(I)V

    return-void
.end method

.method static d(Lio/grpc/r;)Lio/grpc/r$a;
    .locals 1

    .line 1
    instance-of v0, p0, Lio/grpc/r$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/r$a;

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    return-object p0
.end method

.method static h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j()Lio/grpc/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/r;->s()Lio/grpc/r$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/r$g;->b()Lio/grpc/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/r;->e:Lio/grpc/r;

    :cond_0
    return-object v0
.end method

.method public static q(Ljava/lang/String;)Lio/grpc/r$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/r$e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/r$e;

    invoke-direct {v0, p0}, Lio/grpc/r$e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static s()Lio/grpc/r$g;
    .locals 1

    sget-object v0, Lio/grpc/r$f;->a:Lio/grpc/r$g;

    return-object v0
.end method

.method private static t(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    sget-object p0, Lio/grpc/r;->d:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r$b;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "cancellationListener"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/r;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/r;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lio/grpc/r$d;

    invoke-direct {v1, p2, p1, p0}, Lio/grpc/r$d;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/r$b;Lio/grpc/r;)V

    invoke-static {v0, v1}, Lio/grpc/r$a;->w(Lio/grpc/r$a;Lio/grpc/r$d;)V

    return-void
.end method

.method public c()Lio/grpc/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/r;->s()Lio/grpc/r$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/r$g;->d(Lio/grpc/r;)Lio/grpc/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/r;->e:Lio/grpc/r;

    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/r$a;->e()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public k(Lio/grpc/r;)V
    .locals 1

    const-string v0, "toAttach"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/r;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/grpc/r;->s()Lio/grpc/r$g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/r$g;->c(Lio/grpc/r;Lio/grpc/r;)V

    return-void
.end method

.method public o()Lio/grpc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/r$a;->o()Lio/grpc/t;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/r$a;->p()Z

    move-result v0

    return v0
.end method

.method public r(Lio/grpc/r$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->a:Lio/grpc/r$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0, p1, p0}, Lio/grpc/r$a;->y(Lio/grpc/r$a;Lio/grpc/r$b;Lio/grpc/r;)V

    return-void
.end method

.method public v(Lio/grpc/r$e;Ljava/lang/Object;)Lio/grpc/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/r$e<",
            "TV;>;TV;)",
            "Lio/grpc/r;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/r;->b:Lio/grpc/y0$d;

    .line 2
    invoke-static {v0, p1, p2}, Lio/grpc/y0;->b(Lio/grpc/y0$d;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/y0$d;

    move-result-object p1

    .line 3
    new-instance p2, Lio/grpc/r;

    invoke-direct {p2, p0, p1}, Lio/grpc/r;-><init>(Lio/grpc/r;Lio/grpc/y0$d;)V

    return-object p2
.end method
