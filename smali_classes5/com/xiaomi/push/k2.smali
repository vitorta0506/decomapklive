.class public Lcom/xiaomi/push/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/xiaomi/push/p2;

.field private final b:Lcom/xiaomi/push/u2;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/er;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/push/u2;

    invoke-direct {v0}, Lcom/xiaomi/push/u2;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/k2;->b:Lcom/xiaomi/push/u2;

    invoke-interface {p1, v0}, Lcom/xiaomi/push/er;->a(Lcom/xiaomi/push/v2;)Lcom/xiaomi/push/p2;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/k2;->a:Lcom/xiaomi/push/p2;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ef;[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/k2;->b:Lcom/xiaomi/push/u2;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/u2;->h([B)V

    iget-object p2, p0, Lcom/xiaomi/push/k2;->a:Lcom/xiaomi/push/p2;

    invoke-interface {p1, p2}, Lcom/xiaomi/push/ef;->a(Lcom/xiaomi/push/p2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/push/k2;->a:Lcom/xiaomi/push/p2;

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->H()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/xiaomi/push/k2;->a:Lcom/xiaomi/push/p2;

    invoke-virtual {p2}, Lcom/xiaomi/push/p2;->H()V

    throw p1
.end method
