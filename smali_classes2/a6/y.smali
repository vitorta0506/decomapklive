.class La6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk6/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lk6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lk6/a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, La6/w;->a:La6/w;

    sput-object v0, La6/y;->c:Lk6/a;

    .line 2
    sget-object v0, La6/x;->a:La6/x;

    sput-object v0, La6/y;->d:Lk6/b;

    return-void
.end method

.method private constructor <init>(Lk6/a;Lk6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a<",
            "TT;>;",
            "Lk6/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La6/y;->a:Lk6/a;

    .line 3
    iput-object p2, p0, La6/y;->b:Lk6/b;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, La6/y;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lk6/b;)V
    .locals 0

    invoke-static {p0}, La6/y;->d(Lk6/b;)V

    return-void
.end method

.method static c()La6/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "La6/y<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La6/y;

    sget-object v1, La6/y;->c:Lk6/a;

    sget-object v2, La6/y;->d:Lk6/b;

    invoke-direct {v0, v1, v2}, La6/y;-><init>(Lk6/a;Lk6/b;)V

    return-object v0
.end method

.method private static synthetic d(Lk6/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method f(Lk6/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La6/y;->b:Lk6/b;

    sget-object v1, La6/y;->d:Lk6/b;

    if-ne v0, v1, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, La6/y;->a:Lk6/a;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, La6/y;->a:Lk6/a;

    .line 5
    iput-object p1, p0, La6/y;->b:Lk6/b;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v0, p1}, Lk6/a;->a(Lk6/b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, La6/y;->b:Lk6/b;

    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
