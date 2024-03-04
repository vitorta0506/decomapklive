.class Lcom/xiaomi/push/service/XMPushService$m;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field private b:Lcom/xiaomi/push/r1;

.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/r1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$m;->c:Lcom/xiaomi/push/service/XMPushService;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$m;->b:Lcom/xiaomi/push/r1;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "receive a message."

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$m;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/y;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$m;->b:Lcom/xiaomi/push/r1;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/y;->c(Lcom/xiaomi/push/r1;)V

    return-void
.end method
