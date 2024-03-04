.class public final Lcom/google/android/gms/recaptcha/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/common/b; = null

.field private static b:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/b;->f()Lcom/google/android/gms/common/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/recaptcha/a;->a:Lcom/google/android/gms/common/b;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/recaptcha/b;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/recaptcha/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/n;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/recaptcha/n;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/w;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/p0;->b:Ljava/util/concurrent/ExecutorService;

    sget v0, Lcom/google/android/gms/recaptcha/a;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/google/android/gms/recaptcha/a;->a:Lcom/google/android/gms/common/b;

    const v4, 0x1160f98

    .line 2
    invoke-virtual {v0, p0, v4}, Lcom/google/android/gms/common/b;->h(Landroid/content/Context;I)I

    move-result p0

    if-eq p0, v3, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 3
    sput p0, Lcom/google/android/gms/recaptcha/a;->b:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sput v2, Lcom/google/android/gms/recaptcha/a;->b:I

    :cond_2
    :goto_1
    sget p0, Lcom/google/android/gms/recaptcha/a;->b:I

    if-eqz p0, :cond_4

    if-ne p0, v2, :cond_3

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 5
    :cond_4
    throw v1

    .line 6
    :cond_5
    throw v1
.end method
