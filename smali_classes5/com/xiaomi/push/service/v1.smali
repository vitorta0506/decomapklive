.class public Lcom/xiaomi/push/service/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/xiaomi/push/dq;)Lcom/xiaomi/push/dv;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/dq;->a()[B

    move-result-object p0

    new-instance v0, Lcom/xiaomi/push/dv;

    invoke-direct {v0}, Lcom/xiaomi/push/dv;-><init>()V

    :try_start_0
    invoke-static {v0, p0}, Lcom/xiaomi/push/h2;->c(Lcom/xiaomi/push/ef;[B)V
    :try_end_0
    .catch Lcom/xiaomi/push/ej; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ext_fcm_container_buffer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "mipush_apps_scrt"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/v1;->d([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/xiaomi/push/service/e2;->d([B)Lcom/xiaomi/push/dq;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/push/service/i;->r(Landroid/content/Context;Lcom/xiaomi/push/dq;[B)Lcom/xiaomi/push/service/i$c;

    goto :goto_0

    :cond_1
    const-string p0, "notify fcm notification error \uff1adencrypt failed"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "notify fcm notification error "

    invoke-static {p1, p0}, Ltf/c;->n(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "mipush_apps_scrt"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d([BLjava/lang/String;)[B
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "secret is empty, return null"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/push/b;->b(Ljava/lang/String;)[B

    move-result-object p1

    :try_start_0
    invoke-static {p1, p0}, Lsf/a;->b([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "dencryption error. "

    invoke-static {p1, p0}, Ltf/c;->n(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
