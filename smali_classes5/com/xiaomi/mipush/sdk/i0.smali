.class public Lcom/xiaomi/mipush/sdk/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/i0;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a()I
    .locals 2

    const-string v0, "com.xiaomi.assemble.control.AssembleConstants"

    const-string v1, "ASSEMBLE_VERSION_CODE"

    invoke-static {v0, v1}, Lcom/xiaomi/push/q3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method static b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/i0;->d(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-class p0, Lcom/xiaomi/mipush/sdk/i0;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/i0;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static d(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/k0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "ftos_push_token"

    goto :goto_0

    :cond_1
    const-string p0, "cos_push_token"

    goto :goto_0

    :cond_2
    const-string p0, "fcm_push_token_v2"

    goto :goto_0

    :cond_3
    const-string p0, "hms_push_token"

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/mipush/sdk/c;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/i0;->d(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/k0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const-string v3, "brand:"

    const/4 v4, 0x0

    const-string v5, "package_name"

    const-string v6, "token"

    const-string v7, "~"

    const-string v8, ":"

    if-eq p1, v2, :cond_6

    const/4 v2, 0x2

    const-string v9, "brand"

    const-string v10, "version"

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Lsf/k$a;

    invoke-direct {p1, v8, v7}, Lsf/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/y;->e:Lcom/xiaomi/mipush/sdk/y;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v9, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object p1

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/i0;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/i0;->a()I

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v10, p1}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    :cond_2
    invoke-virtual {p0}, Lsf/k$a;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mipush/sdk/y;->d:Lcom/xiaomi/mipush/sdk/y;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/i0;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_4
    new-instance p1, Lsf/k$a;

    invoke-direct {p1, v8, v7}, Lsf/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/y;->c:Lcom/xiaomi/mipush/sdk/y;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v9, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object p1

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/i0;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/i0;->a()I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const p1, 0xc356

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x80

    invoke-virtual {p1, v2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->u(Ljava/lang/String;)V

    :goto_1
    const/4 p1, -0x1

    if-eqz v4, :cond_7

    iget-object p1, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.huawei.hms.client.appid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/y;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/i0;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "app_id"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string p0, "RegInfo"

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static f(Landroid/content/Context;)V
    .locals 6

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/c;->a:Lcom/xiaomi/mipush/sdk/c;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/i0;->d(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/i0;->d(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/mipush/sdk/w;->p(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/l0;->c(Lcom/xiaomi/mipush/sdk/c;)Lcom/xiaomi/push/db;

    const/4 p0, 0x1

    return p0
.end method

.method public static h(Lcom/xiaomi/mipush/sdk/c;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->d:Lcom/xiaomi/mipush/sdk/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(Lcom/xiaomi/push/dq;Lcom/xiaomi/mipush/sdk/c;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/dq;->a()Lcom/xiaomi/push/di;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/dq;->a()Lcom/xiaomi/push/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/di;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    if-ne p1, v0, :cond_0

    const-string p1, "FCM"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/dq;->a()Lcom/xiaomi/push/di;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/push/di;->a()Ljava/util/Map;

    move-result-object p0

    const-string v0, "assemble_push_type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/content/Context;Lcom/xiaomi/push/dq;Lcom/xiaomi/mipush/sdk/c;)[B
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaomi/mipush/sdk/i0;->i(Lcom/xiaomi/push/dq;Lcom/xiaomi/mipush/sdk/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/i0;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/f;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/i0;->d(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_version"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f0;->e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/f0;->b()V

    return-void
.end method

.method public static m(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/push/f3;->b(Landroid/content/Context;)Lcom/xiaomi/push/f3;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/j0;

    invoke-direct {v1, p2, p0, p1}, Lcom/xiaomi/mipush/sdk/j0;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/f3;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f0;->e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/f0;->a()V

    return-void
.end method

.method static synthetic o(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/i0;->p(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized p(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/xiaomi/mipush/sdk/i0;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/i0;->d(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "ASSEMBLE_PUSH : can not find the key of token used in sp file"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_check_token"

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/n;->q()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/i0;->h(Lcom/xiaomi/mipush/sdk/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/i0;->k(Lcom/xiaomi/mipush/sdk/c;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/i0;->a()I

    move-result p1

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-static {v2}, Lsf/h;->a(Landroid/content/SharedPreferences$Editor;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ASSEMBLE_PUSH : update sp file success!  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
