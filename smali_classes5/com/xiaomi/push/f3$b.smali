.class Lcom/xiaomi/push/f3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lcom/xiaomi/push/f3$a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/f3$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/f3$b;->a:Lcom/xiaomi/push/f3$a;

    return-void
.end method


# virtual methods
.method b()V
    .locals 0

    return-void
.end method

.method c()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/f3$b;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/f3$b;->a:Lcom/xiaomi/push/f3$a;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lcom/xiaomi/push/f3$b;->c()V

    return-void
.end method
