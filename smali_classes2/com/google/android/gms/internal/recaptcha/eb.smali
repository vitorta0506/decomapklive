.class final Lcom/google/android/gms/internal/recaptcha/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Lcom/google/android/gms/internal/recaptcha/eb;

.field static final d:Lcom/google/android/gms/internal/recaptcha/eb;


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/cb;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/eb;->d:Lcom/google/android/gms/internal/recaptcha/eb;

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/eb;->c:Lcom/google/android/gms/internal/recaptcha/eb;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/eb;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/recaptcha/eb;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/eb;->d:Lcom/google/android/gms/internal/recaptcha/eb;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/eb;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/recaptcha/eb;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/eb;->c:Lcom/google/android/gms/internal/recaptcha/eb;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/eb;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/eb;->b:Ljava/lang/Throwable;

    return-void
.end method
