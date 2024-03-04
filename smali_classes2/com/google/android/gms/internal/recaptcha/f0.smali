.class public final synthetic Lcom/google/android/gms/internal/recaptcha/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/recaptcha/f0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/f0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/f0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/f0;->a:Lcom/google/android/gms/internal/recaptcha/f0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1

    check-cast p1, Ljava/lang/Exception;

    sget v0, Lcom/google/android/gms/internal/recaptcha/h0;->f:I

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/recaptcha/RecaptchaNetworkException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/recaptcha/HttpStatusException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzby;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzby;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->e(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzbx;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzbx;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->e(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    :goto_1
    return-object p1
.end method
