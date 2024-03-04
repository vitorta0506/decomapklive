.class Lcom/xiaomi/push/z0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/push/y0;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/y0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/z0;->a:Lcom/xiaomi/push/y0;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/z0;->a:Lcom/xiaomi/push/y0;

    invoke-static {v0}, Lcom/xiaomi/push/y0;->Q(Lcom/xiaomi/push/y0;)Lcom/xiaomi/push/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/t0;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/z0;->a:Lcom/xiaomi/push/y0;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/i1;->L(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method
