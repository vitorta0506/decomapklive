.class Lcom/xiaomi/push/service/XMPushService$h;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$h;->b:Lcom/xiaomi/push/service/XMPushService;

    const p1, 0xffff

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Init Job"

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$h;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService;)V

    return-void
.end method
