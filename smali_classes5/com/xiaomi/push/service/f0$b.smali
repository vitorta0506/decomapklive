.class Lcom/xiaomi/push/service/f0$b;
.super Lcom/xiaomi/push/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/push/l;Lcom/xiaomi/push/m$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/push/m;-><init>(Landroid/content/Context;Lcom/xiaomi/push/l;Lcom/xiaomi/push/m$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected f(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaomi/push/m;->f(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/xiaomi/push/m;->j:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/push/p3;->n(Landroid/content/Context;)Z

    throw p1
.end method
