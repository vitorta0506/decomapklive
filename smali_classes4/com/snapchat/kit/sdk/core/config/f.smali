.class public final Lcom/snapchat/kit/sdk/core/config/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/config/f$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/snapchat/kit/sdk/core/config/ConfigClient;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/snapchat/kit/sdk/core/config/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/snapchat/kit/sdk/core/config/ConfigClient;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/snapchat/kit/sdk/core/config/f$a;->a:I

    iput v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->a:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->c:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f;->b:Lcom/snapchat/kit/sdk/core/config/ConfigClient;

    .line 5
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/config/f;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/kit/sdk/core/config/e;)Ljava/lang/Double;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/config/e;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/config/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/config/c;

    .line 3
    iget-object v0, v0, Lcom/snapchat/kit/sdk/core/config/c;->a:Lcom/snapchat/kit/sdk/core/config/d;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/config/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/config/c;

    .line 5
    iget-object v0, v0, Lcom/snapchat/kit/sdk/core/config/c;->a:Lcom/snapchat/kit/sdk/core/config/d;

    .line 6
    iget-object v0, v0, Lcom/snapchat/kit/sdk/core/config/d;->a:Lcom/snapchat/kit/sdk/core/config/g;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/config/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/config/c;

    .line 8
    iget-object v0, v0, Lcom/snapchat/kit/sdk/core/config/c;->a:Lcom/snapchat/kit/sdk/core/config/d;

    .line 9
    iget-object v0, v0, Lcom/snapchat/kit/sdk/core/config/d;->a:Lcom/snapchat/kit/sdk/core/config/g;

    .line 10
    iget-object v0, v0, Lcom/snapchat/kit/sdk/core/config/g;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/config/e;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/config/c;

    .line 12
    iget-object p0, p0, Lcom/snapchat/kit/sdk/core/config/c;->a:Lcom/snapchat/kit/sdk/core/config/d;

    .line 13
    iget-object p0, p0, Lcom/snapchat/kit/sdk/core/config/d;->a:Lcom/snapchat/kit/sdk/core/config/g;

    .line 14
    iget-object p0, p0, Lcom/snapchat/kit/sdk/core/config/g;->a:Ljava/lang/Double;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/snapchat/kit/sdk/core/config/f;->h(D)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/snapchat/kit/sdk/core/config/f$a;->a:I

    iput v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->a:I

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/core/config/b;

    .line 3
    invoke-interface {v1}, Lcom/snapchat/kit/sdk/core/config/b;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/snapchat/kit/sdk/core/config/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/snapchat/kit/sdk/core/config/f;->b()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/kit/sdk/core/config/f;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/snapchat/kit/sdk/core/config/f;->g(D)V

    return-void
.end method

.method private declared-synchronized g(D)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.snapchat.kit.sdk.core.config.skateSampleRate"

    double-to-float v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    sget v0, Lcom/snapchat/kit/sdk/core/config/f$a;->c:I

    iput v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->a:I

    .line 3
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/core/config/b;

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/snapchat/kit/sdk/core/config/b;->b(D)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static h(D)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final c(D)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/snapchat/kit/sdk/core/config/f;->h(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    double-to-float p1, p1

    const-string p2, "com.snapchat.kit.sdk.core.config.skateSampleRate"

    .line 3
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized d(Lcom/snapchat/kit/sdk/core/config/b;)V
    .locals 3
    .param p1    # Lcom/snapchat/kit/sdk/core/config/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->a:I

    sget v1, Lcom/snapchat/kit/sdk/core/config/f$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->d:Landroid/content/SharedPreferences;

    const-string v1, "com.snapchat.kit.sdk.core.config.skateSampleRate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/snapchat/kit/sdk/core/config/b;->b(D)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :catch_0
    :try_start_2
    invoke-interface {p1}, Lcom/snapchat/kit/sdk/core/config/b;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget p1, p0, Lcom/snapchat/kit/sdk/core/config/f;->a:I

    sget v0, Lcom/snapchat/kit/sdk/core/config/f$a;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_1

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_4
    iput v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->a:I

    .line 11
    new-instance p1, Lcom/snapchat/kit/sdk/core/config/f$b;

    invoke-direct {p1, p0}, Lcom/snapchat/kit/sdk/core/config/f$b;-><init>(Lcom/snapchat/kit/sdk/core/config/f;)V

    .line 12
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/config/f;->b:Lcom/snapchat/kit/sdk/core/config/ConfigClient;

    new-instance v1, Lcom/snapchat/kit/sdk/core/config/a;

    const-string v2, "query($kitVersion: String!) {config(kitVersion: $kitVersion) {skateConfig{sampleRate}}}"

    invoke-direct {v1, v2, p1}, Lcom/snapchat/kit/sdk/core/config/a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    invoke-interface {v0, v1}, Lcom/snapchat/kit/sdk/core/config/ConfigClient;->fetchConfig(Lcom/snapchat/kit/sdk/core/config/a;)Lretrofit2/Call;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/snapchat/kit/sdk/core/config/f$c;

    invoke-direct {v0, p0}, Lcom/snapchat/kit/sdk/core/config/f$c;-><init>(Lcom/snapchat/kit/sdk/core/config/f;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
