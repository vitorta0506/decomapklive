.class public Lt6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;La6/d;La6/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lt6/b;->c(Ljava/lang/String;La6/d;La6/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Ljava/lang/String;La6/d;La6/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lt6/c;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, La6/d;->f()La6/h;

    move-result-object p0

    invoke-interface {p0, p2}, La6/h;->a(La6/e;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {}, Lt6/c;->a()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lt6/c;->a()V

    .line 4
    throw p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "La6/d<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La6/d;

    .line 3
    invoke-virtual {v1}, La6/d;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Lt6/a;

    invoke-direct {v3, v2, v1}, Lt6/a;-><init>(Ljava/lang/String;La6/d;)V

    .line 5
    invoke-virtual {v1, v3}, La6/d;->r(La6/h;)La6/d;

    move-result-object v1

    .line 6
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
