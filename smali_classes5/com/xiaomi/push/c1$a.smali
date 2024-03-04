.class public Lcom/xiaomi/push/c1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/g1;

.field private b:Lcom/xiaomi/push/n1;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/g1;Lcom/xiaomi/push/n1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/c1$a;->a:Lcom/xiaomi/push/g1;

    iput-object p2, p0, Lcom/xiaomi/push/c1$a;->b:Lcom/xiaomi/push/n1;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/r0;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c1$a;->a:Lcom/xiaomi/push/g1;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/g1;->b(Lcom/xiaomi/push/r0;)V

    return-void
.end method

.method public b(Lcom/xiaomi/push/r1;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c1$a;->b:Lcom/xiaomi/push/n1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/push/n1;->a(Lcom/xiaomi/push/r1;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/c1$a;->a:Lcom/xiaomi/push/g1;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/g1;->a(Lcom/xiaomi/push/r1;)V

    :cond_1
    return-void
.end method
