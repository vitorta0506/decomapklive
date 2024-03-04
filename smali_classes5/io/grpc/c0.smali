.class public final Lio/grpc/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/c0$d;,
        Lio/grpc/c0$b;,
        Lio/grpc/c0$c;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/logging/Logger;

.field private static final g:Lio/grpc/c0;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/c0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/c0;->f:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/c0;

    invoke-direct {v0}, Lio/grpc/c0;-><init>()V

    sput-object v0, Lio/grpc/c0;->g:Lio/grpc/c0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lio/grpc/c0;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lio/grpc/c0;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/c0;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/c0;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/c0;->e:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/c0;->f:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static b(Ljava/util/Map;Lio/grpc/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/f0<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p1}, Lio/grpc/l0;->c()Lio/grpc/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/g0;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/f0;

    return-void
.end method

.method public static f(Lio/grpc/l0;)J
    .locals 2

    invoke-interface {p0}, Lio/grpc/l0;->c()Lio/grpc/g0;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/g0;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()Lio/grpc/c0;
    .locals 1

    sget-object v0, Lio/grpc/c0;->g:Lio/grpc/c0;

    return-object v0
.end method

.method private static h(Ljava/util/Map;Lio/grpc/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/f0<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/grpc/c0;->f(Lio/grpc/l0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/f0;

    return-void
.end method


# virtual methods
.method public c(Lio/grpc/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/c0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/c0;->b(Ljava/util/Map;Lio/grpc/f0;)V

    return-void
.end method

.method public d(Lio/grpc/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/c0;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/c0;->b(Ljava/util/Map;Lio/grpc/f0;)V

    return-void
.end method

.method public e(Lio/grpc/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/c0;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/c0;->b(Ljava/util/Map;Lio/grpc/f0;)V

    return-void
.end method

.method public i(Lio/grpc/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/c0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/c0;->h(Ljava/util/Map;Lio/grpc/f0;)V

    return-void
.end method

.method public j(Lio/grpc/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/c0;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/c0;->h(Ljava/util/Map;Lio/grpc/f0;)V

    return-void
.end method

.method public k(Lio/grpc/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/c0;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/c0;->h(Ljava/util/Map;Lio/grpc/f0;)V

    return-void
.end method
