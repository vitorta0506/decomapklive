.class Lcom/xiaomi/push/service/g1;
.super Lcom/xiaomi/push/d1;
.source "SourceFile"


# instance fields
.field final synthetic j:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/push/f1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/g1;->j:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/push/d1;-><init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/push/f1;)V

    return-void
.end method


# virtual methods
.method public h()[B
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/x;

    invoke-direct {v0}, Lcom/xiaomi/push/x;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/o0;->e()Lcom/xiaomi/push/service/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/o0;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/x;->j(I)Lcom/xiaomi/push/x;

    invoke-virtual {v0}, Lcom/xiaomi/push/g2;->h()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOBBString err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
