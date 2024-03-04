.class public Lcom/xiaomi/mipush/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/dv;)V
    .locals 7

    invoke-virtual {p1}, Lcom/xiaomi/push/dv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dv;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    sget-object v1, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mipush/sdk/n$a;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/xiaomi/push/dv;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/push/dv;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/n$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/n;->h(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V

    :cond_0
    const/4 p0, 0x0

    iget-object v0, p1, Lcom/xiaomi/push/dv;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/push/dv;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v2, p0

    sget-object p0, Lcom/xiaomi/push/bg;->a:Lcom/xiaomi/push/bg;

    iget-object v1, p0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    iget-wide v3, p1, Lcom/xiaomi/push/dv;->a:J

    iget-object v5, p1, Lcom/xiaomi/push/dv;->d:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/xiaomi/push/eb;)V
    .locals 6

    sget-object p0, Lcom/xiaomi/push/bg;->b:Lcom/xiaomi/push/bg;

    iget-object v0, p0, Lcom/xiaomi/push/bg;->a:Ljava/lang/String;

    iget-wide v2, p1, Lcom/xiaomi/push/eb;->a:J

    iget-object v4, p1, Lcom/xiaomi/push/eb;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/m;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-virtual {p1}, Lcom/xiaomi/push/eb;->a()Ljava/lang/String;

    return-void
.end method
