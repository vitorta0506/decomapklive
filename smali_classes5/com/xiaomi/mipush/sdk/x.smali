.class Lcom/xiaomi/mipush/sdk/x;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/w;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-class v1, Lcom/xiaomi/mipush/sdk/x0;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/x0;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/x0;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->a:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, p1, :cond_1

    const-string v3, "syncing"

    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    :goto_0
    invoke-static {p1, v0, v2, v5, v4}, Lcom/xiaomi/mipush/sdk/w;->r(Lcom/xiaomi/mipush/sdk/w;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/am;ZLjava/util/HashMap;)V

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->b:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v3, p1, :cond_2

    const-string v3, "syncing"

    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->c:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, p1, :cond_3

    const-string v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/mipush/sdk/c;->a:Lcom/xiaomi/mipush/sdk/c;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/i0;->e(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Ljava/util/HashMap;

    move-result-object v3

    :goto_1
    invoke-static {p1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/w;->r(Lcom/xiaomi/mipush/sdk/w;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/am;ZLjava/util/HashMap;)V

    goto/16 :goto_2

    :cond_3
    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->d:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v3, p1, :cond_4

    const-string v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/i0;->e(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->e:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v3, p1, :cond_5

    const-string v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/i0;->e(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/xiaomi/mipush/sdk/am;->f:Lcom/xiaomi/mipush/sdk/am;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v3, p1, :cond_6

    const-string p1, "syncing"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/mipush/sdk/x0;->c(Lcom/xiaomi/mipush/sdk/am;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/mipush/sdk/c;->d:Lcom/xiaomi/mipush/sdk/c;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/i0;->e(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/c;)Ljava/util/HashMap;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/x0;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/x;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/w;->c(Lcom/xiaomi/mipush/sdk/w;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x0;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/x0;->h(Ljava/lang/String;)V

    :cond_8
    :goto_3
    monitor-exit v1

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
