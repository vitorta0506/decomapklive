.class final Lcom/snapchat/kit/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

.field private final b:Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lbe/d;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;Lbe/d;)V
    .locals 2
    .param p1    # Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/c;->b:Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/c;->c:Lbe/d;

    .line 4
    const-class v0, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    const-string v1, "auth_token"

    invoke-virtual {p2, v1, v0}, Lbe/d;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    iput-object p2, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    .line 5
    iget-object p2, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 6
    const-class p2, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {p1, v1, p2}, Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    iput-object p1, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/snapchat/kit/sdk/core/models/AuthToken;)V
    .locals 5
    .param p1    # Lcom/snapchat/kit/sdk/core/models/AuthToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getLastUpdated()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getLastUpdated()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    .line 3
    iget-object p1, p0, Lcom/snapchat/kit/sdk/c;->c:Lbe/d;

    const-string v0, "auth_token"

    iget-object v1, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {p1, v0, v1}, Lbe/d;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/snapchat/kit/sdk/c;->b:Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;

    if-eqz p1, :cond_1

    const-string v0, "auth_token"

    .line 5
    invoke-virtual {p1, v0}, Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;->clearEntry(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->isComplete()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->isExpired()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 3
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    const-wide/32 v1, 0x493e0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->willBeExpiredAfter(Ljava/lang/Long;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/snapchat/kit/sdk/c;->a:Lcom/snapchat/kit/sdk/core/models/AuthToken;

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->b:Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;

    if-eqz v0, :cond_0

    const-string v1, "auth_token"

    .line 3
    invoke-virtual {v0, v1}, Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;->clearEntry(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/c;->c:Lbe/d;

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Lbe/d;->clearEntry(Ljava/lang/String;)V
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
