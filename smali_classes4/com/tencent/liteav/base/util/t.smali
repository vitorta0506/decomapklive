.class public final Lcom/tencent/liteav/base/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static final b:Lcom/tencent/liteav/base/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/liteav/base/util/a<",
            "Lcom/tencent/liteav/base/util/CpuUsageMeasurer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/liteav/base/util/a;

    invoke-static {}, Lcom/tencent/liteav/base/util/u;->b()Lcom/tencent/liteav/base/util/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/a;-><init>(Lcom/tencent/liteav/base/util/a$a;)V

    sput-object v0, Lcom/tencent/liteav/base/util/t;->b:Lcom/tencent/liteav/base/util/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/liteav/base/util/q;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "window"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    new-instance p0, Lcom/tencent/liteav/base/util/q;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/base/util/q;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SystemUtil"

    const-string v1, "get display size failed."

    .line 10
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    new-instance p0, Lcom/tencent/liteav/base/util/q;

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    return-object p0
.end method

.method public static a()[I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/liteav/base/util/t;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/tencent/liteav/base/util/t;->a:Z

    .line 3
    sget-object v0, Lcom/tencent/liteav/base/util/t;->b:Lcom/tencent/liteav/base/util/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/a;->a()Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/liteav/base/util/CpuUsageMeasurer;->a()[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/tencent/liteav/base/util/t;->b:Lcom/tencent/liteav/base/util/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/a;->a()Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/liteav/base/util/CpuUsageMeasurer;->a()[I

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    const-string/jumbo v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SystemUtil"

    const-string v1, "get display rotation failed."

    .line 3
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
