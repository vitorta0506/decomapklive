.class public final La6/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk6/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La6/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:La6/j;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La6/o$b;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La6/o$b;->c:Ljava/util/List;

    .line 4
    sget-object v0, La6/j;->a:La6/j;

    iput-object v0, p0, La6/o$b;->d:La6/j;

    .line 5
    iput-object p1, p0, La6/o$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    invoke-static {p0}, La6/o$b;->f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public b(La6/d;)La6/o$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/d<",
            "*>;)",
            "La6/o$b;"
        }
    .end annotation

    iget-object v0, p0, La6/o$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Lcom/google/firebase/components/ComponentRegistrar;)La6/o$b;
    .locals 2

    iget-object v0, p0, La6/o$b;->b:Ljava/util/List;

    new-instance v1, La6/p;

    invoke-direct {v1, p1}, La6/p;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Ljava/util/Collection;)La6/o$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lk6/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;)",
            "La6/o$b;"
        }
    .end annotation

    iget-object v0, p0, La6/o$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public e()La6/o;
    .locals 7

    new-instance v6, La6/o;

    iget-object v1, p0, La6/o$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, La6/o$b;->b:Ljava/util/List;

    iget-object v3, p0, La6/o$b;->c:Ljava/util/List;

    iget-object v4, p0, La6/o$b;->d:La6/j;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, La6/o;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;La6/j;La6/o$a;)V

    return-object v6
.end method

.method public g(La6/j;)La6/o$b;
    .locals 0

    iput-object p1, p0, La6/o$b;->d:La6/j;

    return-object p0
.end method
