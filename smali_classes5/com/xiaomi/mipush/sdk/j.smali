.class public abstract Lcom/xiaomi/mipush/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/j$a;,
        Lcom/xiaomi/mipush/sdk/j$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:J

.field protected static volatile c:Lcom/xiaomi/channel/commonutils/android/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/j;->b:J

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/j;->c:Lcom/xiaomi/channel/commonutils/android/Region;

    return-void
.end method

.method protected static A(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f0;->e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->a:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/f0;->m(Lcom/xiaomi/mipush/sdk/c;)Z

    move-result p0

    return p0
.end method

.method protected static B(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f0;->e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/f0;->m(Lcom/xiaomi/mipush/sdk/c;)Z

    move-result p0

    return p0
.end method

.method protected static C(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f0;->e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->d:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/f0;->m(Lcom/xiaomi/mipush/sdk/c;)Z

    move-result p0

    return p0
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/n;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;Ljava/lang/String;)V
    .locals 11

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ltf/c;->j(Landroid/content/Context;)V

    const-string v3, "sdk_version = 5_0_6-G"

    invoke-static {v3}, Ltf/c;->v(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lcom/xiaomi/mipush/sdk/j$b;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lcom/xiaomi/mipush/sdk/j$a;)V

    :cond_1
    sget-object v3, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v3}, Lsf/j;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/p;->b(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lsf/e;->h()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "please set region before registering"

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v3, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    move-object/from16 v5, p6

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/j;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    sget-object v5, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/n;->a()I

    move-result v5

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->a()I

    move-result v6

    const/4 v7, 0x1

    if-eq v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_6

    sget-object v6, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/j;->b0(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/w;->m()V

    const-string v0, "Could not send  register message within 5s repeatly ."

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_6
    const v6, 0xc356

    const-string v8, "5_0_6-G"

    if-nez v5, :cond_a

    :try_start_1
    sget-object v9, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/mipush/sdk/n;->y()Z

    move-result v9

    if-nez v9, :cond_a

    if-nez v3, :cond_a

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/m;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v7, v0, :cond_7

    const-string v0, "callback"

    invoke-static {p3, v0}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v9, v10, v1, v0}, Lcom/xiaomi/mipush/sdk/j$b;->c(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/n;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/push/bg;->a:Lcom/xiaomi/push/bg;

    iget-object v2, v2, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object p1, v2

    move-object p2, v0

    move-wide p3, v9

    move-object/from16 p5, v3

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/m;->f(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    :goto_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/w;->m()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/xiaomi/push/dt;

    invoke-direct {v0}, Lcom/xiaomi/push/dt;-><init>()V

    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    sget-object v2, Lcom/xiaomi/push/df;->g:Lcom/xiaomi/push/df;

    iget-object v2, v2, Lcom/xiaomi/push/df;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/xiaomi/push/dt;->a:Ljava/util/Map;

    const-string v3, "app_version"

    sget-object v5, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaomi/channel/commonutils/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/xiaomi/push/dt;->a:Ljava/util/Map;

    const-string v3, "app_version_code"

    sget-object v5, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaomi/channel/commonutils/android/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/xiaomi/push/dt;->a:Ljava/util/Map;

    const-string v3, "push_sdk_vn"

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/xiaomi/push/dt;->a:Ljava/util/Map;

    const-string v3, "push_sdk_vc"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/n;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/xiaomi/push/dt;->a:Ljava/util/Map;

    const-string v5, "deviceid"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/xiaomi/mipush/sdk/w;->w(Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;ZLcom/xiaomi/push/di;)V

    :cond_9
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/xiaomi/push/dt;

    invoke-direct {v0}, Lcom/xiaomi/push/dt;-><init>()V

    sget-object v1, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    sget-object v1, Lcom/xiaomi/push/df;->j:Lcom/xiaomi/push/df;

    iget-object v1, v1, Lcom/xiaomi/push/df;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/dt;->a(Z)Lcom/xiaomi/push/dt;

    sget-object v1, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p1, v1

    move-object p2, v0

    move-object p3, v2

    move p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Lcom/xiaomi/mipush/sdk/w;->x(Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;ZLcom/xiaomi/push/di;Z)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->g(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/xiaomi/push/g;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/n;->e()V

    sget-object v4, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->a()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/xiaomi/mipush/sdk/n;->f(I)V

    sget-object v4, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v2}, Lcom/xiaomi/mipush/sdk/n;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/j;->m(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->p(Landroid/content/Context;)V

    new-instance v4, Lcom/xiaomi/push/du;

    invoke-direct {v4}, Lcom/xiaomi/push/du;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/x;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/xiaomi/push/du;->a(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {v4, p1}, Lcom/xiaomi/push/du;->b(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {v4, p2}, Lcom/xiaomi/push/du;->e(Ljava/lang/String;)Lcom/xiaomi/push/du;

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/du;->d(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {v4, v2}, Lcom/xiaomi/push/du;->f(Ljava/lang/String;)Lcom/xiaomi/push/du;

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/du;->c(Ljava/lang/String;)Lcom/xiaomi/push/du;

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/du;->b(I)Lcom/xiaomi/push/du;

    invoke-virtual {v4, v8}, Lcom/xiaomi/push/du;->h(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {v4, v6}, Lcom/xiaomi/push/du;->a(I)Lcom/xiaomi/push/du;

    sget-object v0, Lcom/xiaomi/push/dj;->c:Lcom/xiaomi/push/dj;

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/du;->a(Lcom/xiaomi/push/dj;)Lcom/xiaomi/push/du;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, p4

    invoke-virtual {v4, p4}, Lcom/xiaomi/push/du;->g(Ljava/lang/String;)Lcom/xiaomi/push/du;

    :cond_b
    invoke-static {}, Lsf/b;->a()I

    move-result v0

    if-ltz v0, :cond_c

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/du;->c(I)Lcom/xiaomi/push/du;

    :cond_c
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v3}, Lcom/xiaomi/mipush/sdk/w;->s(Lcom/xiaomi/push/du;ZZ)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mipush_registed"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    :cond_d
    :goto_3
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/j;->U()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/xiaomi/mipush/sdk/h;->a()Ltf/a;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/h;->a()Ltf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/h;->c(Landroid/content/Context;Ltf/a;)V

    :cond_e
    const/4 v0, 0x2

    invoke-static {v0}, Ltf/c;->f(I)V

    :cond_f
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->F(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ltf/c;->o(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private static F(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/am;->a:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->s(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->b:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->t(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->c:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->h0(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->d:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->f0(Landroid/content/Context;)V

    :cond_3
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->e:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->e0(Landroid/content/Context;)V

    :cond_4
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->f:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->g0(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method static G(Landroid/content/Context;Lcom/xiaomi/push/dj;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "re-register reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->v(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaomi/push/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/n;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/n;->e()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->n(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->p(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/n;->f(I)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/xiaomi/mipush/sdk/n;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/push/du;

    invoke-direct {v3}, Lcom/xiaomi/push/du;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/x;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/du;->a(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {v3, v1}, Lcom/xiaomi/push/du;->b(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {v3, v2}, Lcom/xiaomi/push/du;->e(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/du;->f(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/du;->d(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/du;->c(Ljava/lang/String;)Lcom/xiaomi/push/du;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/du;->b(I)Lcom/xiaomi/push/du;

    const-string v0, "5_0_6-G"

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/du;->h(Ljava/lang/String;)Lcom/xiaomi/push/du;

    const v0, 0xc356

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/du;->a(I)Lcom/xiaomi/push/du;

    invoke-virtual {v3, p1}, Lcom/xiaomi/push/du;->a(Lcom/xiaomi/push/dj;)Lcom/xiaomi/push/du;

    invoke-static {}, Lsf/b;->a()I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {v3, p1}, Lcom/xiaomi/push/du;->c(I)Lcom/xiaomi/push/du;

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, p1}, Lcom/xiaomi/mipush/sdk/w;->s(Lcom/xiaomi/push/du;ZZ)V

    return-void
.end method

.method private static H(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2, v0}, Lsf/f;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    invoke-static {p0, v0}, Lsf/f;->e(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamic register network status receiver failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/mipush/sdk/l;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/l;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/mipush/sdk/j;->J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/l;)V

    return-void
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/l;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/j;->K(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/l;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;)V

    return-void
.end method

.method private static K(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/l;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appID"

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appToken"

    invoke-static {p2, v0}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lsf/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->c:Lcom/xiaomi/channel/commonutils/android/Region;

    const-string v1, "region"

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    sput-object p0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    :cond_1
    sget-object p0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {p0}, Lsf/j;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->H(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/f0;->e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f0;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/mipush/sdk/f0;->g(Lcom/xiaomi/mipush/sdk/l;)V

    invoke-static {p0}, Lcom/xiaomi/push/f3;->b(Landroid/content/Context;)Lcom/xiaomi/push/f3;

    move-result-object p0

    new-instance p3, Lcom/xiaomi/mipush/sdk/i;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/xiaomi/mipush/sdk/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;)V

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/f3;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method static declared-synchronized L(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "accept_time"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lsf/h;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized M(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized N(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized O(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->x(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/j;->M(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized P(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->v(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/j;->N(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized Q(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->w(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/j;->R(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized R(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static S(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/di;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v1, Lcom/xiaomi/push/dt;

    invoke-direct {v1}, Lcom/xiaomi/push/dt;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "do not report clicked message"

    invoke-static {p0}, Ltf/c;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1, p4}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    const-string v0, "bar:click"

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/dt;->a(Z)Lcom/xiaomi/push/dt;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/w;->z(Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;ZZLcom/xiaomi/push/di;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static T(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/di;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/push/dt;

    invoke-direct {v0}, Lcom/xiaomi/push/dt;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/n;->p()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p0, "do not report clicked message"

    invoke-static {p0}, Ltf/c;->u(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, p3}, Lcom/xiaomi/push/dt;->b(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    const-string p3, "bar:click"

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/dt;->c(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/dt;->a(Ljava/lang/String;)Lcom/xiaomi/push/dt;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/dt;->a(Z)Lcom/xiaomi/push/dt;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    sget-object p3, Lcom/xiaomi/push/cz;->i:Lcom/xiaomi/push/cz;

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/xiaomi/mipush/sdk/w;->w(Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;ZLcom/xiaomi/push/di;)V

    return-void
.end method

.method private static U()V
    .locals 4

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/f3;->b(Landroid/content/Context;)Lcom/xiaomi/push/f3;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/w0;

    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/mipush/sdk/w0;-><init>(Landroid/content/Context;)V

    const v2, 0x15180

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/f3;->j(Lcom/xiaomi/push/f3$a;II)Z

    return-void
.end method

.method public static V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/bg;->c:Lcom/xiaomi/push/bg;

    iget-object v0, v0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/j;->W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/xiaomi/push/bg;->c:Lcom/xiaomi/push/bg;

    iget-object v1, v0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/j;->j(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v7, 0x5265c00

    cmp-long v1, v3, v7

    if-gez v1, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m;->c(Landroid/content/Context;)I

    move-result p2

    if-ne v2, p2, :cond_1

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, v0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v6

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/m;->f(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/xiaomi/push/bg;->d:Lcom/xiaomi/push/bg;

    iget-object v0, v0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " is unseted"

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/j;->j(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-gez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t cancel alias for "

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/xiaomi/push/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/xiaomi/push/bg;->e:Lcom/xiaomi/push/bg;

    iget-object v7, v0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/j;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x36ee80

    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m;->c(Landroid/content/Context;)I

    move-result p2

    if-ne v2, p2, :cond_1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xiaomi/push/bg;->f:Lcom/xiaomi/push/bg;

    iget-object v0, v0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/j;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p2, v7, v4

    if-gez p2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t cancel account for "

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, v6, p3}, Lcom/xiaomi/mipush/sdk/j;->X(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected static X(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/push/do;

    invoke-direct {v0}, Lcom/xiaomi/push/do;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/do;->a(Ljava/lang/String;)Lcom/xiaomi/push/do;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/do;->b(Ljava/lang/String;)Lcom/xiaomi/push/do;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/do;->c(Ljava/lang/String;)Lcom/xiaomi/push/do;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/do;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/xiaomi/push/do;->e(Ljava/lang/String;)Lcom/xiaomi/push/do;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/do;->d(Ljava/lang/String;)Lcom/xiaomi/push/do;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cmd:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->v(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/push/cz;->j:Lcom/xiaomi/push/cz;

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/w;->u(Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;Lcom/xiaomi/push/di;)V

    return-void
.end method

.method public static Y(Lcom/xiaomi/channel/commonutils/android/Region;)V
    .locals 1

    invoke-static {}, Lsf/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/xiaomi/mipush/sdk/j;->c:Lcom/xiaomi/channel/commonutils/android/Region;

    return-void
.end method

.method public static Z(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/bg;->e:Lcom/xiaomi/push/bg;

    iget-object v0, v0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/j;->W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a0(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_pull_notification"

    const-wide/16 v4, -0x1

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/xiaomi/mipush/sdk/j;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;Ljava/lang/String;)V

    return-void
.end method

.method private static b0(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_reg_request"

    const-wide/16 v4, -0x1

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c0(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/w;->H()Z

    move-result p0

    return p0
.end method

.method static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "accept_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lsf/h;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/j;->i0(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    new-instance v0, Lcom/xiaomi/push/dy;

    invoke-direct {v0}, Lcom/xiaomi/push/dy;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dy;->a(Ljava/lang/String;)Lcom/xiaomi/push/dy;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/dy;->b(Ljava/lang/String;)Lcom/xiaomi/push/dy;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/dy;->c(Ljava/lang/String;)Lcom/xiaomi/push/dy;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/dy;->d(Ljava/lang/String;)Lcom/xiaomi/push/dy;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/dy;->e(Ljava/lang/String;)Lcom/xiaomi/push/dy;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cmd:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/xiaomi/push/bg;->g:Lcom/xiaomi/push/bg;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->v(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/push/cz;->c:Lcom/xiaomi/push/cz;

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/w;->u(Lcom/xiaomi/push/ef;Lcom/xiaomi/push/cz;Lcom/xiaomi/push/di;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m;->c(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/xiaomi/push/bg;->g:Lcom/xiaomi/push/bg;

    iget-object v7, p1, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/m;->f(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e0(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/am;->e:Lcom/xiaomi/mipush/sdk/am;

    sget-object v1, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/mipush/sdk/w;->C(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/am;Lcom/xiaomi/mipush/sdk/c;)V

    return-void
.end method

.method static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f0(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/am;->d:Lcom/xiaomi/mipush/sdk/am;

    sget-object v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/mipush/sdk/w;->C(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/am;Lcom/xiaomi/mipush/sdk/c;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_pull_notification"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lsf/h;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static g0(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/am;->f:Lcom/xiaomi/mipush/sdk/am;

    sget-object v1, Lcom/xiaomi/mipush/sdk/c;->d:Lcom/xiaomi/mipush/sdk/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/mipush/sdk/w;->C(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/am;Lcom/xiaomi/mipush/sdk/c;)V

    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_reg_request"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lsf/h;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static h0(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/am;->c:Lcom/xiaomi/mipush/sdk/am;

    sget-object v1, Lcom/xiaomi/mipush/sdk/c;->a:Lcom/xiaomi/mipush/sdk/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/mipush/sdk/w;->C(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/am;Lcom/xiaomi/mipush/sdk/c;)V

    return-void
.end method

.method static declared-synchronized i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/j;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static i0(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alias_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j0(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/i0;->n(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/u;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/u;->f()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/push/ea;

    invoke-direct {v0}, Lcom/xiaomi/push/ea;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ea;->a(Ljava/lang/String;)Lcom/xiaomi/push/ea;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ea;->b(Ljava/lang/String;)Lcom/xiaomi/push/ea;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/n;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ea;->c(Ljava/lang/String;)Lcom/xiaomi/push/ea;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/n;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ea;->e(Ljava/lang/String;)Lcom/xiaomi/push/ea;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ea;->d(Ljava/lang/String;)Lcom/xiaomi/push/ea;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/w;->t(Lcom/xiaomi/push/ea;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->n()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->o(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->p(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->m(Landroid/content/Context;)V

    return-void
.end method

.method private static k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not nullable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    const-string v1, "mipush_region"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_region"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "req_hosts"

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Singapore"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current register region: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    return v2
.end method

.method protected static m(Landroid/content/Context;)V
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static n(Landroid/content/Context;)V
    .locals 5

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->v(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->x(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->w(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    const-string p0, "accept_time"

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/w;->X()V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/w;->n(I)V

    return-void
.end method

.method public static q(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mipush/sdk/w;->n(I)V

    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/w;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/w;->F(Z)V

    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/w;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/w;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/w;->F(Z)V

    return-void
.end method

.method protected static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "accept_time"

    const-string v1, "00:00-23:59"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static w(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "**ALL**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static x(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/n;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/n;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static z(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f0;->e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/f0;->m(Lcom/xiaomi/mipush/sdk/c;)Z

    move-result p0

    return p0
.end method
