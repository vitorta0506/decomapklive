.class final Lcom/xiaomi/push/service/i2;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic c:Lcom/xiaomi/push/dq;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/i2;->b:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/i2;->c:Lcom/xiaomi/push/dq;

    iput-object p4, p0, Lcom/xiaomi/push/service/i2;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send app absent ack message for message."

    return-object v0
.end method

.method public c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i2;->b:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/i2;->c:Lcom/xiaomi/push/dq;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/e2;->b(Landroid/content/Context;Lcom/xiaomi/push/dq;)Lcom/xiaomi/push/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/dq;->a()Lcom/xiaomi/push/di;

    move-result-object v1

    const-string v2, "absent_target_package"

    iget-object v3, p0, Lcom/xiaomi/push/service/i2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/di;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/i2;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/f;->i(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/dq;)V
    :try_end_0
    .catch Lcom/xiaomi/push/cd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ltf/c;->o(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/i2;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method
