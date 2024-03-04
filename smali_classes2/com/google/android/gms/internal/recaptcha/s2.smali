.class public final Lcom/google/android/gms/internal/recaptcha/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/recaptcha/e3;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/r2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/e3;

    .line 1
    invoke-direct {p2}, Lcom/google/android/gms/internal/recaptcha/e3;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/s2;->b:Lcom/google/android/gms/internal/recaptcha/e3;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "Context cannot be null"

    .line 2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/m3;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/s2;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/recaptcha/s2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/s2;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/recaptcha/s2;)Lcom/google/android/gms/internal/recaptcha/e3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/s2;->b:Lcom/google/android/gms/internal/recaptcha/e3;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/recaptcha/t2;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/t2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/recaptcha/t2;-><init>(Lcom/google/android/gms/internal/recaptcha/s2;Lcom/google/android/gms/internal/recaptcha/r2;)V

    return-object v0
.end method
