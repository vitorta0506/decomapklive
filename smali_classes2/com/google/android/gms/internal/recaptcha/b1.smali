.class public abstract Lcom/google/android/gms/internal/recaptcha/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/recaptcha/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzo()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/xj;->z()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/x0;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/recaptcha/x0;-><init>(Lcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/xj;)V

    sput-object v2, Lcom/google/android/gms/internal/recaptcha/b1;->a:Lcom/google/android/gms/internal/recaptcha/b1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/xj;)Lcom/google/android/gms/internal/recaptcha/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;",
            "Lcom/google/android/gms/internal/recaptcha/xj;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/b1;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/x0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/x0;-><init>(Lcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/xj;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;"
        }
    .end annotation
.end method

.method abstract b()Lcom/google/android/gms/internal/recaptcha/xj;
.end method
