.class final Lcom/xiaomi/mipush/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/mipush/sdk/j$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mipush/sdk/i;->d:Lcom/xiaomi/mipush/sdk/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->c:Lcom/xiaomi/channel/commonutils/android/Region;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->c:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sput-object v1, Lcom/xiaomi/mipush/sdk/j;->c:Lcom/xiaomi/channel/commonutils/android/Region;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v7, v0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/j;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/i;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/i;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/i;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/i;->d:Lcom/xiaomi/mipush/sdk/j$a;

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j$a;Ljava/lang/String;)V

    return-void
.end method
