.class public final Lcom/google/android/gms/internal/recaptcha/y6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/recaptcha/u6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    .line 1
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/y6;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/recaptcha/p7;)Lcom/google/android/gms/internal/recaptcha/p7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/p7<",
            "TI;TO;>;)",
            "Lcom/google/android/gms/internal/recaptcha/p7<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/d7;->b()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/w6;

    .line 2
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/recaptcha/w6;-><init>(Lcom/google/android/gms/internal/recaptcha/u6;Lcom/google/android/gms/internal/recaptcha/p7;)V

    return-object v1
.end method

.method public static b(Lcom/google/android/gms/internal/recaptcha/cc;)Lcom/google/android/gms/internal/recaptcha/cc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/d7;->b()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/v6;

    .line 3
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/recaptcha/v6;-><init>(Lcom/google/android/gms/internal/recaptcha/u6;Lcom/google/android/gms/internal/recaptcha/cc;)V

    return-object v1
.end method

.method public static c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "TI;TO;>;)",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/d7;->b()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/x6;

    .line 2
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/recaptcha/x6;-><init>(Lcom/google/android/gms/internal/recaptcha/u6;Lcom/google/android/gms/internal/recaptcha/dc;)V

    return-object v1
.end method
