.class public Lcom/xiaomi/push/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xiaomi/push/i3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/i3;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/i3;-><init>(ZI)V

    sput-object v0, Lcom/xiaomi/push/c2;->a:Lcom/xiaomi/push/i3;

    return-void
.end method

.method public static a(Lcom/xiaomi/push/i3$b;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/c2;->a:Lcom/xiaomi/push/i3;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/i3;->e(Lcom/xiaomi/push/i3$b;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/push/c2;->a:Lcom/xiaomi/push/i3;

    new-instance v1, Lcom/xiaomi/push/d2;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/d2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/i3;->e(Lcom/xiaomi/push/i3$b;)V

    return-void
.end method
