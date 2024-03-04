.class Lcom/xiaomi/push/k1;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lcom/xiaomi/push/i1;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/i1;IILjava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/k1;->d:Lcom/xiaomi/push/i1;

    iput p3, p0, Lcom/xiaomi/push/k1;->b:I

    iput-object p4, p0, Lcom/xiaomi/push/k1;->c:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdown the connection. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/k1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/k1;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/k1;->d:Lcom/xiaomi/push/i1;

    iget-object v0, v0, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/k1;->b:I

    iget-object v2, p0, Lcom/xiaomi/push/k1;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    return-void
.end method
