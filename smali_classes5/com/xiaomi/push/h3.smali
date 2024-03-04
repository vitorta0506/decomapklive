.class Lcom/xiaomi/push/h3;
.super Lcom/xiaomi/push/f3$b;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/xiaomi/push/f3;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/f3;Lcom/xiaomi/push/f3$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/h3;->b:Lcom/xiaomi/push/f3;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/f3$b;-><init>(Lcom/xiaomi/push/f3$a;)V

    return-void
.end method


# virtual methods
.method c()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/h3;->b:Lcom/xiaomi/push/f3;

    invoke-static {v0}, Lcom/xiaomi/push/f3;->c(Lcom/xiaomi/push/f3;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/h3;->b:Lcom/xiaomi/push/f3;

    invoke-static {v1}, Lcom/xiaomi/push/f3;->e(Lcom/xiaomi/push/f3;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/f3$b;->a:Lcom/xiaomi/push/f3$a;

    invoke-virtual {v2}, Lcom/xiaomi/push/f3$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
