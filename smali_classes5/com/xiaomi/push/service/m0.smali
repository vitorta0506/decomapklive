.class Lcom/xiaomi/push/service/m0;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field private b:Lcom/xiaomi/push/service/XMPushService;

.field private c:Lcom/xiaomi/push/r0;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/r0;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/push/service/m0;->b:Lcom/xiaomi/push/service/XMPushService;

    iput-object p2, p0, Lcom/xiaomi/push/service/m0;->c:Lcom/xiaomi/push/r0;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send a message."

    return-object v0
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/m0;->c:Lcom/xiaomi/push/r0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/m0;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/r0;)V
    :try_end_0
    .catch Lcom/xiaomi/push/cd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ltf/c;->o(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/m0;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
