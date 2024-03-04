.class Lcom/xiaomi/push/service/p0;
.super Lcom/xiaomi/push/i3$b;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/xiaomi/push/service/o0;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/o0;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    invoke-direct {p0}, Lcom/xiaomi/push/i3$b;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/push/service/p0;->a:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lsf/j;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/b;->b()Ljava/lang/String;

    const-string v0, "https://resolver.msg.global.xiaomi.net/psc/?t=a"

    invoke-static {}, Lsf/j;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/push/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/v;->n([B)Lcom/xiaomi/push/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/o0;->c(Lcom/xiaomi/push/service/o0;Lcom/xiaomi/push/v;)Lcom/xiaomi/push/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/p0;->a:Z

    iget-object v0, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    invoke-static {v0}, Lcom/xiaomi/push/service/o0;->k(Lcom/xiaomi/push/service/o0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch config failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/o0;->d(Lcom/xiaomi/push/service/o0;Lcom/xiaomi/push/i3$b;)Lcom/xiaomi/push/i3$b;

    iget-boolean v0, p0, Lcom/xiaomi/push/service/p0;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    invoke-static {v1}, Lcom/xiaomi/push/service/o0;->g(Lcom/xiaomi/push/service/o0;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    invoke-static {v2}, Lcom/xiaomi/push/service/o0;->g(Lcom/xiaomi/push/service/o0;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xiaomi/push/service/o0$a;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaomi/push/service/o0$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/xiaomi/push/service/p0;->b:Lcom/xiaomi/push/service/o0;

    invoke-static {v4}, Lcom/xiaomi/push/service/o0;->b(Lcom/xiaomi/push/service/o0;)Lcom/xiaomi/push/v;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/o0$a;->b(Lcom/xiaomi/push/v;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void
.end method
