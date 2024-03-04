.class public abstract Lcom/google/android/gms/internal/recaptcha/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/recaptcha/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkl;->zzc()Lcom/google/android/gms/internal/recaptcha/zzkl;

    move-result-object v0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zj;->v()Lcom/google/android/gms/internal/recaptcha/zj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/y0;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/recaptcha/y0;-><init>(Lcom/google/android/gms/internal/recaptcha/zzkl;Lcom/google/android/gms/internal/recaptcha/zj;)V

    sput-object v2, Lcom/google/android/gms/internal/recaptcha/c1;->a:Lcom/google/android/gms/internal/recaptcha/c1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/recaptcha/zzkl;Lcom/google/android/gms/internal/recaptcha/zj;)Lcom/google/android/gms/internal/recaptcha/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzkl<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;",
            "Lcom/google/android/gms/internal/recaptcha/zj;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/c1;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/y0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/y0;-><init>(Lcom/google/android/gms/internal/recaptcha/zzkl;Lcom/google/android/gms/internal/recaptcha/zj;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/recaptcha/zzkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkl<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/android/gms/internal/recaptcha/zj;
.end method
