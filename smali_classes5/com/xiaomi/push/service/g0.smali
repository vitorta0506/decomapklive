.class public Lcom/xiaomi/push/service/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/xiaomi/push/service/g0;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/g0;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/service/g0;->a:Landroid/content/Context;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/xiaomi/push/service/g0;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/g0;->c:Lcom/xiaomi/push/service/g0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/g0;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/g0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/g0;->c:Lcom/xiaomi/push/service/g0;

    :cond_0
    sget-object p0, Lcom/xiaomi/push/service/g0;->c:Lcom/xiaomi/push/service/g0;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget v0, p0, Lcom/xiaomi/push/service/g0;->b:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/g0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/service/g0;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget v0, p0, Lcom/xiaomi/push/service/g0;->b:I

    return v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    sget-object v0, Lcom/xiaomi/push/a3;->a:Ljava/lang/String;

    const-string v1, "xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
