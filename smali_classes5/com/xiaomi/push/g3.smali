.class Lcom/xiaomi/push/g3;
.super Lcom/xiaomi/push/f3$b;
.source "SourceFile"


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/push/f3;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/f3;Lcom/xiaomi/push/f3$a;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/g3;->d:Lcom/xiaomi/push/f3;

    iput-boolean p3, p0, Lcom/xiaomi/push/g3;->b:Z

    iput-object p4, p0, Lcom/xiaomi/push/g3;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/f3$b;-><init>(Lcom/xiaomi/push/f3$a;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/push/f3$b;->b()V

    return-void
.end method

.method c()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/push/g3;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/g3;->d:Lcom/xiaomi/push/f3;

    invoke-static {v0}, Lcom/xiaomi/push/f3;->a(Lcom/xiaomi/push/f3;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/g3;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
