.class Lcom/xiaomi/push/service/l1;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;IIZLjava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/l1;->f:Lcom/xiaomi/push/service/XMPushService;

    iput p3, p0, Lcom/xiaomi/push/service/l1;->b:I

    iput-boolean p4, p0, Lcom/xiaomi/push/service/l1;->c:Z

    iput-object p5, p0, Lcom/xiaomi/push/service/l1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/service/l1;->e:[B

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "clear account cache."

    return-object v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/l1;->f:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/a2;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/push/service/az;->c()Lcom/xiaomi/push/service/az;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/az;->m(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/push/service/l1;->b:I

    invoke-static {v0}, Lcom/xiaomi/push/a3;->b(I)V

    iget-boolean v0, p0, Lcom/xiaomi/push/service/l1;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/l1;->f:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/l1;->f:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/d1;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/d1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/d1;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear account and start registration. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/l1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/l1;->f:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/l1;->e:[B

    iget-object v2, p0, Lcom/xiaomi/push/service/l1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    return-void
.end method
