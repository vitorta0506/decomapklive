.class public Lcom/xiaomi/push/service/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/e$a;,
        Lcom/xiaomi/push/service/e$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/e$a;

.field private static b:Lcom/xiaomi/push/service/e$b;


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/push/dq;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/push/dq;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/push/service/e;->a:Lcom/xiaomi/push/service/e$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/e$a;->a(Landroid/content/Context;Lcom/xiaomi/push/dq;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "pepa listener or container is null"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/xiaomi/push/dq;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/e;->a:Lcom/xiaomi/push/service/e$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/e$a;->a(Landroid/content/Context;Lcom/xiaomi/push/dq;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "handle msg wrong"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static c(Lcom/xiaomi/push/dq;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/e;->b:Lcom/xiaomi/push/service/e$b;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/e$b;->a(Lcom/xiaomi/push/dq;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa clearMessage is null"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/e;->b:Lcom/xiaomi/push/service/e$b;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/e$b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa clearMessage is null"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/xiaomi/push/dq;Z)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/e;->a:Lcom/xiaomi/push/service/e$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/push/service/e$a;->b(Landroid/content/Context;Lcom/xiaomi/push/dq;Z)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa judement listener or container is null"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static f(Lcom/xiaomi/push/dq;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/e;->b:Lcom/xiaomi/push/service/e$b;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/e$b;->a(Lcom/xiaomi/push/dq;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa handleReceiveMessage is null"

    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method
