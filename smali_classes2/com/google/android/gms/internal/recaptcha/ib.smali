.class final Lcom/google/android/gms/internal/recaptcha/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/recaptcha/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/cb<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/recaptcha/nd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/cb;Lcom/google/android/gms/internal/recaptcha/nd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/cb<",
            "TV;>;",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ib;->a:Lcom/google/android/gms/internal/recaptcha/cb;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ib;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ib;->a:Lcom/google/android/gms/internal/recaptcha/cb;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->w(Lcom/google/android/gms/internal/recaptcha/cb;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ib;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->A(Lcom/google/android/gms/internal/recaptcha/nd;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/cb;->q()Lcom/google/android/gms/internal/recaptcha/db;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/ib;->a:Lcom/google/android/gms/internal/recaptcha/cb;

    .line 3
    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/recaptcha/db;->d(Lcom/google/android/gms/internal/recaptcha/cb;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ib;->a:Lcom/google/android/gms/internal/recaptcha/cb;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->C(Lcom/google/android/gms/internal/recaptcha/cb;)V

    :cond_1
    return-void
.end method
