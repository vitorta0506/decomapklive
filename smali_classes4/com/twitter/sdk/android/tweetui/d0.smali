.class public Lcom/twitter/sdk/android/tweetui/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile f:Lcom/twitter/sdk/android/tweetui/d0;


# instance fields
.field a:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/twitter/sdk/android/core/e;

.field c:Landroid/content/Context;

.field private d:Lcom/twitter/sdk/android/tweetui/z;

.field private e:Lcom/squareup/picasso/Picasso;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->f()Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/d0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/l;->d(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/d0;->c:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/q;->l()Lcom/twitter/sdk/android/core/k;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/d0;->a:Lcom/twitter/sdk/android/core/k;

    .line 5
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/q;->i()Lcom/twitter/sdk/android/core/e;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/d0;->b:Lcom/twitter/sdk/android/core/e;

    .line 6
    new-instance v1, Lcom/twitter/sdk/android/tweetui/z;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/q;->l()Lcom/twitter/sdk/android/core/k;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/twitter/sdk/android/tweetui/z;-><init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/k;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/d0;->d:Lcom/twitter/sdk/android/tweetui/z;

    .line 8
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->f()Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/d0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/l;->d(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->p(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/d0;->e:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method public static c()Lcom/twitter/sdk/android/tweetui/d0;
    .locals 2

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/tweetui/d0;->f:Lcom/twitter/sdk/android/tweetui/d0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/twitter/sdk/android/tweetui/d0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/twitter/sdk/android/tweetui/d0;->f:Lcom/twitter/sdk/android/tweetui/d0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/tweetui/d0;

    invoke-direct {v1}, Lcom/twitter/sdk/android/tweetui/d0;-><init>()V

    sput-object v1, Lcom/twitter/sdk/android/tweetui/d0;->f:Lcom/twitter/sdk/android/tweetui/d0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/twitter/sdk/android/tweetui/d0;->f:Lcom/twitter/sdk/android/tweetui/d0;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.twitter.sdk.android:tweet-ui"

    return-object v0
.end method

.method public b()Lcom/squareup/picasso/Picasso;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/d0;->e:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method d()Lcom/twitter/sdk/android/tweetui/z;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/d0;->d:Lcom/twitter/sdk/android/tweetui/z;

    return-object v0
.end method
