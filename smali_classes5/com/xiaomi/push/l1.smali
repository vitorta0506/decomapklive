.class Lcom/xiaomi/push/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/push/i1;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/i1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/l1;->b:Lcom/xiaomi/push/i1;

    iput-object p2, p0, Lcom/xiaomi/push/l1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/push/m;->c()Lcom/xiaomi/push/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/l1;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/m;->b(Ljava/lang/String;Z)Lcom/xiaomi/push/i;

    return-void
.end method
