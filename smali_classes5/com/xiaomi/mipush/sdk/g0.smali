.class Lcom/xiaomi/mipush/sdk/g0;
.super Lcom/xiaomi/push/service/u$a;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/xiaomi/mipush/sdk/f0;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/f0;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/g0;->c:Lcom/xiaomi/mipush/sdk/f0;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/push/service/u$a;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g0;->c:Lcom/xiaomi/mipush/sdk/f0;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/f0;->k(Lcom/xiaomi/mipush/sdk/f0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g0;->c:Lcom/xiaomi/mipush/sdk/f0;

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/f0;->l(Lcom/xiaomi/mipush/sdk/f0;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g0;->c:Lcom/xiaomi/mipush/sdk/f0;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/f0;->c(Lcom/xiaomi/mipush/sdk/f0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/i0;->l(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
