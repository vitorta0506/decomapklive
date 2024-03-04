.class final Lcom/xiaomi/push/service/o1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/xiaomi/push/service/s$a<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    sget-object p1, Lcom/xiaomi/push/service/s;->c:Lcom/xiaomi/push/service/s$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/s;->d:Lcom/xiaomi/push/service/s$a;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/s;->e:Lcom/xiaomi/push/service/s$a;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/s;->g:Lcom/xiaomi/push/service/s$a;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/s;->f:Lcom/xiaomi/push/service/s$a;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
