.class public Lcom/xiaomi/mipush/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/n$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/xiaomi/mipush/sdk/n;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaomi/mipush/sdk/n$a;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/n$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->r()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "mipush"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->e:Lcom/xiaomi/mipush/sdk/n;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->e:Lcom/xiaomi/mipush/sdk/n;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/mipush/sdk/n;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/n;->e:Lcom/xiaomi/mipush/sdk/n;

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
    sget-object p0, Lcom/xiaomi/mipush/sdk/n;->e:Lcom/xiaomi/mipush/sdk/n;

    return-object p0
.end method

.method private r()V
    .locals 6

    new-instance v0, Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/n$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "appId"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "appToken"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "regId"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "regSec"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "devId"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/mipush/sdk/n$a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/n$a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/n$a;->f:Ljava/lang/String;

    invoke-static {v1}, Lsf/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v4}, Lsf/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/mipush/sdk/n$a;->f:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v4, v4, Lcom/xiaomi/mipush/sdk/n$a;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "vName"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "valid"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->i:Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const/4 v2, 0x0

    const-string v5, "paused"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->j:Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "envType"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->k:I

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "regResource"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/n$a;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    const-string v2, "appRegion"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/mipush/sdk/n$a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->k:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n$a;->c()V

    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/n$a;->d(I)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "envType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/n$a;->e:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/n$a;->b(Lcom/xiaomi/mipush/sdk/n$a;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hybrid_app_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/n$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/n$a;->g(Z)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/n$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/n$a;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n$a;->j()V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/n$a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n$a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Don\'t send message before initialization succeeded!"

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n$a;->h()Z

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->j:Z

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n$a;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/n$a;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
