.class Lcom/xiaomi/push/service/c0;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/xiaomi/push/service/az$b$c;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/az$b$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/c0;->b:Lcom/xiaomi/push/service/az$b$c;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "clear peer job"

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/c0;->b:Lcom/xiaomi/push/service/az$b$c;

    iget-object v1, v0, Lcom/xiaomi/push/service/az$b$c;->b:Landroid/os/Messenger;

    iget-object v0, v0, Lcom/xiaomi/push/service/az$b$c;->a:Lcom/xiaomi/push/service/az$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clean peer, chid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/c0;->b:Lcom/xiaomi/push/service/az$b$c;

    iget-object v1, v1, Lcom/xiaomi/push/service/az$b$c;->a:Lcom/xiaomi/push/service/az$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/az$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/c0;->b:Lcom/xiaomi/push/service/az$b$c;

    iget-object v0, v0, Lcom/xiaomi/push/service/az$b$c;->a:Lcom/xiaomi/push/service/az$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    :cond_0
    return-void
.end method
