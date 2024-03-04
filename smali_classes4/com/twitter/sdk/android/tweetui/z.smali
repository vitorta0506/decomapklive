.class Lcom/twitter/sdk/android/tweetui/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/z$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/q;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/tweetui/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/z;-><init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/q;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;",
            "Lcom/twitter/sdk/android/core/q;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/z;->a:Lcom/twitter/sdk/android/core/q;

    .line 4
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/z;->b:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/z;->c:Lcom/twitter/sdk/android/core/k;

    .line 6
    new-instance p1, Landroidx/collection/LruCache;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/z;->d:Landroidx/collection/LruCache;

    .line 7
    new-instance p1, Landroidx/collection/LruCache;

    invoke-direct {p1, p2}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/z;->e:Landroidx/collection/LruCache;

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/models/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/twitter/sdk/android/tweetui/z;->g(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/sdk/android/tweetui/z;)Lcom/twitter/sdk/android/core/q;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/z;->a:Lcom/twitter/sdk/android/core/q;

    return-object p0
.end method

.method private c(Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/core/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/l;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z;->b:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/y;

    invoke-direct {v1, p2, p1}, Lcom/twitter/sdk/android/tweetui/y;-><init>(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/models/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic g(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/models/l;)V
    .locals 2

    new-instance v0, Lcom/twitter/sdk/android/core/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/i;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    return-void
.end method


# virtual methods
.method d(JLcom/twitter/sdk/android/core/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lcom/twitter/sdk/android/tweetui/z$a;

    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/z$a;-><init>(Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/g;JLcom/twitter/sdk/android/core/b;)V

    invoke-virtual {p0, v7}, Lcom/twitter/sdk/android/tweetui/z;->f(Lcom/twitter/sdk/android/core/b;)V

    return-void
.end method

.method e(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/tweetui/h;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z;->e:Landroidx/collection/LruCache;

    iget-wide v1, p1, Lcom/twitter/sdk/android/core/models/l;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/h;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/c0;->f(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/tweetui/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcom/twitter/sdk/android/tweetui/h;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/z;->e:Landroidx/collection/LruCache;

    iget-wide v2, p1, Lcom/twitter/sdk/android/core/models/l;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method f(Lcom/twitter/sdk/android/core/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z;->c:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->d()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/s;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v1, "User authorization required"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/i;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {p1, v1}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    :goto_0
    return-void
.end method

.method h(JLcom/twitter/sdk/android/core/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z;->d:Landroidx/collection/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p3}, Lcom/twitter/sdk/android/tweetui/z;->c(Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/core/b;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z;->a:Lcom/twitter/sdk/android/core/q;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/m;->h()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2, p2, p2}, Lcom/twitter/sdk/android/core/services/StatusesService;->show(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/twitter/sdk/android/tweetui/z$c;

    invoke-direct {p2, p0, p3}, Lcom/twitter/sdk/android/tweetui/z$c;-><init>(Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method i(JLcom/twitter/sdk/android/core/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lcom/twitter/sdk/android/tweetui/z$b;

    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/z$b;-><init>(Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/g;JLcom/twitter/sdk/android/core/b;)V

    invoke-virtual {p0, v7}, Lcom/twitter/sdk/android/tweetui/z;->f(Lcom/twitter/sdk/android/core/b;)V

    return-void
.end method

.method j(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z;->d:Landroidx/collection/LruCache;

    iget-wide v1, p1, Lcom/twitter/sdk/android/core/models/l;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
