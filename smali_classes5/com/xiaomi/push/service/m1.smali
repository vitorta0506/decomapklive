.class public Lcom/xiaomi/push/service/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/m1$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/service/m1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/m1;->a:Ljava/util/List;

    return-void
.end method

.method private static a()V
    .locals 7

    sget-object v0, Lcom/xiaomi/push/service/m1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lcom/xiaomi/push/service/m1;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/m1$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/xiaomi/push/service/m1$a;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sget-object v2, Lcom/xiaomi/push/service/m1;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/m1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/xiaomi/push/service/m1;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected static b(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V
    .locals 6

    invoke-static {p0}, Lsf/e;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/xiaomi/push/service/m1$a;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/s;->s(Landroid/app/Notification;)[Landroid/app/Notification$Action;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/m1$a;-><init>(Ljava/lang/String;JI[Landroid/app/Notification$Action;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/m1;->c(Lcom/xiaomi/push/service/m1$a;)V

    :cond_0
    return-void
.end method

.method private static c(Lcom/xiaomi/push/service/m1$a;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/m1;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/push/service/m1;->a()V

    return-void
.end method
