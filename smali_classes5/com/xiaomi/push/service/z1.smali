.class public Lcom/xiaomi/push/service/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/z1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/z1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/z1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/z1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/z1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/service/z1;->f:Ljava/lang/String;

    iput p7, p0, Lcom/xiaomi/push/service/z1;->g:I

    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ro.miui.region"

    invoke-static {p0}, Lsf/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ro.product.locale.region"

    invoke-static {p0}, Lsf/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lsf/e;->m()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static d()Z
    .locals 3

    :try_start_0
    const-string v0, "miui.os.Build"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lsf/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/z1;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/az$b;
    .locals 3

    new-instance v0, Lcom/xiaomi/push/service/az$b;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/az$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->b()Lcom/xiaomi/push/service/s1;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/push/service/z1;->b(Lcom/xiaomi/push/service/az$b;Landroid/content/Context;Lcom/xiaomi/push/service/s1;Ljava/lang/String;)Lcom/xiaomi/push/service/az$b;

    return-object v0
.end method

.method public b(Lcom/xiaomi/push/service/az$b;Landroid/content/Context;Lcom/xiaomi/push/service/s1;Ljava/lang/String;)Lcom/xiaomi/push/service/az$b;
    .locals 4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/az$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/z1;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/az$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/z1;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/az$b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/z1;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/az$b;->c:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p1, Lcom/xiaomi/push/service/az$b;->h:Ljava/lang/String;

    const-string v0, "XMPUSH-PASS"

    iput-object v0, p1, Lcom/xiaomi/push/service/az$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaomi/push/service/az$b;->e:Z

    new-instance v0, Lsf/k$a;

    invoke-direct {v0}, Lsf/k$a;-><init>()V

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sdk_ver"

    invoke-virtual {v0, v2, v1}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    const-string v2, "cpvn"

    const-string v3, "5_0_6-G"

    invoke-virtual {v1, v2, v3}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    const v2, 0xc356

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cpvc"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    invoke-static {p2}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/b;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country_code"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    invoke-static {p2}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "region"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    invoke-static {}, Lsf/e;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miui_vn"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    invoke-static {p2}, Lsf/e;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "miui_vc"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-static {p2, v2}, Lcom/xiaomi/channel/commonutils/android/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "xmsf_vc"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android_ver"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    invoke-static {p2}, Lcom/xiaomi/push/service/r;->t(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "n_belong_to_app"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v1

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/android/a;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "systemui_vc"

    invoke-virtual {v1, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    invoke-static {p2}, Lcom/xiaomi/push/service/z1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "latest_country_code"

    invoke-virtual {v0, v2, v1}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    :cond_0
    invoke-virtual {v0}, Lsf/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/az$b;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/push/service/z1;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1000271"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/z1;->d:Ljava/lang/String;

    :goto_0
    new-instance v1, Lsf/k$a;

    invoke-direct {v1}, Lsf/k$a;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v0, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sync"

    invoke-virtual {v0, v3, v2}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    invoke-static {p2}, Lcom/xiaomi/push/service/z1;->e(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "ab"

    invoke-virtual {v1, p2, p4}, Lsf/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lsf/k$a;

    :cond_2
    invoke-virtual {v1}, Lsf/k$a;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/xiaomi/push/service/az$b;->g:Ljava/lang/String;

    iput-object p3, p1, Lcom/xiaomi/push/service/az$b;->k:Lcom/xiaomi/push/service/s1;

    return-object p1
.end method
