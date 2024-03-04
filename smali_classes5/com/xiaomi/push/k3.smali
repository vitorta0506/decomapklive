.class Lcom/xiaomi/push/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/i3$b;

.field final synthetic b:Lcom/xiaomi/push/i3;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/i3;Lcom/xiaomi/push/i3$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/k3;->b:Lcom/xiaomi/push/i3;

    iput-object p2, p0, Lcom/xiaomi/push/k3;->a:Lcom/xiaomi/push/i3$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/k3;->b:Lcom/xiaomi/push/i3;

    iget-object v1, p0, Lcom/xiaomi/push/k3;->a:Lcom/xiaomi/push/i3$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/i3;->e(Lcom/xiaomi/push/i3$b;)V

    return-void
.end method
