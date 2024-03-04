.class public Lcom/twitter/sdk/android/core/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/j;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/sdk/android/core/internal/g$b;

.field private final b:Lcom/twitter/sdk/android/core/internal/i;

.field private final c:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lcom/twitter/sdk/android/core/internal/h;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/internal/i;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/g$b;Lcom/twitter/sdk/android/core/internal/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k<",
            "TT;>;",
            "Lcom/twitter/sdk/android/core/internal/i;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/g$b;",
            "Lcom/twitter/sdk/android/core/internal/h;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/g;->b:Lcom/twitter/sdk/android/core/internal/i;

    .line 4
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/g;->c:Lcom/twitter/sdk/android/core/k;

    .line 5
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/g;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/g;->a:Lcom/twitter/sdk/android/core/internal/g$b;

    .line 7
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/g;->e:Lcom/twitter/sdk/android/core/internal/h;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/k;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k<",
            "TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v2, Lcom/twitter/sdk/android/core/internal/i;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/i;-><init>()V

    new-instance v4, Lcom/twitter/sdk/android/core/internal/g$b;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/internal/g$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/g;-><init>(Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/internal/i;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/g$b;Lcom/twitter/sdk/android/core/internal/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/internal/a;)V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/core/internal/g$a;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/internal/g$a;-><init>(Lcom/twitter/sdk/android/core/internal/g;)V

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/internal/a;->a(Lcom/twitter/sdk/android/core/internal/a$b;)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/g;->c:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->d()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/g;->b:Lcom/twitter/sdk/android/core/internal/i;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/i;->a()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/g;->a:Lcom/twitter/sdk/android/core/internal/g$b;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/g$b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/g;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/f;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/internal/f;-><init>(Lcom/twitter/sdk/android/core/internal/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method protected c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/g;->c:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/j;

    .line 2
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/g;->e:Lcom/twitter/sdk/android/core/internal/h;

    invoke-interface {v2, v1}, Lcom/twitter/sdk/android/core/internal/h;->a(Lcom/twitter/sdk/android/core/j;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/g;->a:Lcom/twitter/sdk/android/core/internal/g$b;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/g;->b:Lcom/twitter/sdk/android/core/internal/i;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/i;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/g$b;->b(J)V

    return-void
.end method
