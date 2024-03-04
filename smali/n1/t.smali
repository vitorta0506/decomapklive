.class public Ln1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/s;


# static fields
.field private static volatile e:Ln1/u;


# instance fields
.field private final a:Ly1/a;

.field private final b:Ly1/a;

.field private final c:Lu1/e;

.field private final d:Lv1/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ly1/a;Ly1/a;Lu1/e;Lv1/o;Lv1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln1/t;->a:Ly1/a;

    .line 3
    iput-object p2, p0, Ln1/t;->b:Ly1/a;

    .line 4
    iput-object p3, p0, Ln1/t;->c:Lu1/e;

    .line 5
    iput-object p4, p0, Ln1/t;->d:Lv1/o;

    .line 6
    invoke-virtual {p5}, Lv1/s;->c()V

    return-void
.end method

.method private b(Ln1/n;)Ln1/i;
    .locals 4

    .line 1
    invoke-static {}, Ln1/i;->a()Ln1/i$a;

    move-result-object v0

    iget-object v1, p0, Ln1/t;->a:Ly1/a;

    .line 2
    invoke-interface {v1}, Ly1/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ln1/i$a;->i(J)Ln1/i$a;

    move-result-object v0

    iget-object v1, p0, Ln1/t;->b:Ly1/a;

    .line 3
    invoke-interface {v1}, Ly1/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ln1/i$a;->k(J)Ln1/i$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ln1/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/i$a;->j(Ljava/lang/String;)Ln1/i$a;

    move-result-object v0

    new-instance v1, Ln1/h;

    .line 5
    invoke-virtual {p1}, Ln1/n;->b()Ll1/b;

    move-result-object v2

    invoke-virtual {p1}, Ln1/n;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln1/h;-><init>(Ll1/b;[B)V

    invoke-virtual {v0, v1}, Ln1/i$a;->h(Ln1/h;)Ln1/i$a;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ln1/n;->c()Ll1/c;

    move-result-object p1

    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln1/i$a;->g(Ljava/lang/Integer;)Ln1/i$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ln1/i$a;->d()Ln1/i;

    move-result-object p1

    return-object p1
.end method

.method public static c()Ln1/t;
    .locals 2

    .line 1
    sget-object v0, Ln1/t;->e:Ln1/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln1/u;->c()Ln1/t;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ln1/f;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/f;",
            ")",
            "Ljava/util/Set<",
            "Ll1/b;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ln1/g;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ln1/g;

    .line 3
    invoke-interface {p0}, Ln1/g;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    .line 4
    invoke-static {p0}, Ll1/b;->b(Ljava/lang/String;)Ll1/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Ln1/t;->e:Ln1/u;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ln1/t;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ln1/t;->e:Ln1/u;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Ln1/e;->e()Ln1/u$a;

    move-result-object v1

    .line 5
    invoke-interface {v1, p0}, Ln1/u$a;->a(Landroid/content/Context;)Ln1/u$a;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ln1/u$a;->build()Ln1/u;

    move-result-object p0

    sput-object p0, Ln1/t;->e:Ln1/u;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ln1/n;Ll1/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln1/t;->c:Lu1/e;

    .line 2
    invoke-virtual {p1}, Ln1/n;->f()Ln1/o;

    move-result-object v1

    invoke-virtual {p1}, Ln1/n;->c()Ll1/c;

    move-result-object v2

    invoke-virtual {v2}, Ll1/c;->c()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/o;->f(Lcom/google/android/datatransport/Priority;)Ln1/o;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Ln1/t;->b(Ln1/n;)Ln1/i;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lu1/e;->a(Ln1/o;Ln1/i;Ll1/g;)V

    return-void
.end method

.method public e()Lv1/o;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Ln1/t;->d:Lv1/o;

    return-object v0
.end method

.method public g(Ln1/f;)Ll1/f;
    .locals 4

    .line 1
    new-instance v0, Ln1/p;

    .line 2
    invoke-static {p1}, Ln1/t;->d(Ln1/f;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Ln1/o;->a()Ln1/o$a;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Ln1/f;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/o$a;->b(Ljava/lang/String;)Ln1/o$a;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Ln1/f;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/o$a;->c([B)Ln1/o$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ln1/o$a;->a()Ln1/o;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Ln1/p;-><init>(Ljava/util/Set;Ln1/o;Ln1/s;)V

    return-object v0
.end method
