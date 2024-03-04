.class public Lcom/xiaomi/push/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltf/a;


# instance fields
.field private a:Ltf/a;

.field private b:Ltf/a;


# direct methods
.method public constructor <init>(Ltf/a;Ltf/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/s;->a:Ltf/a;

    iput-object p2, p0, Lcom/xiaomi/push/s;->b:Ltf/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/s;->a:Ltf/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ltf/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/s;->b:Ltf/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ltf/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/s;->a:Ltf/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ltf/a;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/s;->b:Ltf/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ltf/a;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
