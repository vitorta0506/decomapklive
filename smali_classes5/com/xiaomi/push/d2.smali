.class final Lcom/xiaomi/push/d2;
.super Lcom/xiaomi/push/i3$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/d2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/xiaomi/push/i3$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/d2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
