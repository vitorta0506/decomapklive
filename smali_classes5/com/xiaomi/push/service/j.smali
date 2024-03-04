.class final Lcom/xiaomi/push/service/j;
.super Lcom/xiaomi/push/f3$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/push/service/r;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/xiaomi/push/service/r;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/j;->b:Lcom/xiaomi/push/service/r;

    iput p3, p0, Lcom/xiaomi/push/service/j;->c:I

    invoke-direct {p0}, Lcom/xiaomi/push/f3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/j;->b:Lcom/xiaomi/push/service/r;

    iget v1, p0, Lcom/xiaomi/push/service/j;->c:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/r;->m(I)V

    return-void
.end method
