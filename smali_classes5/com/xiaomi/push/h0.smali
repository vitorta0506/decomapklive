.class public Lcom/xiaomi/push/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/xiaomi/push/h0;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/h0;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/h0;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/h0;->b:Lcom/xiaomi/push/h0;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/push/h0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/h0;->b:Lcom/xiaomi/push/h0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/push/h0;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/h0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/h0;->b:Lcom/xiaomi/push/h0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/push/h0;->b:Lcom/xiaomi/push/h0;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
