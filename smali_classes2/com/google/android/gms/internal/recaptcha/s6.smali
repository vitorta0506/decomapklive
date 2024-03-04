.class final Lcom/google/android/gms/internal/recaptcha/s6;
.super Lcom/google/android/gms/internal/recaptcha/t6;
.source "SourceFile"


# static fields
.field static final c:Lcom/google/android/gms/internal/recaptcha/t6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/s6;

    .line 1
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/recaptcha/s6;-><init>(Lcom/google/android/gms/internal/recaptcha/t6;Landroidx/collection/SimpleArrayMap;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/t6;->a()Lcom/google/android/gms/internal/recaptcha/t6;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/s6;->c:Lcom/google/android/gms/internal/recaptcha/t6;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/recaptcha/t6;Landroidx/collection/SimpleArrayMap;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, p1}, Lcom/google/android/gms/internal/recaptcha/t6;-><init>(Lcom/google/android/gms/internal/recaptcha/t6;Landroidx/collection/SimpleArrayMap;Lcom/google/android/gms/internal/recaptcha/r6;)V

    return-void
.end method
