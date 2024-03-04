.class Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/v$e;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/v$f;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;
    }
.end annotation


# static fields
.field static final e:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

.field static final f:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

.field static final g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

.field static final h:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$b;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$b;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$c;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$c;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$d;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$d;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wrapperFactory"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    const-string p1, "selectorFactory"

    .line 4
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    const-string p1, "listenerFactory"

    .line 5
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    const-string p1, "protocols"

    .line 6
    invoke-static {p4, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    return-object v0
.end method

.method public e()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    return-object v0
.end method

.method public f()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    return-object v0
.end method
