.class final Lcom/google/android/gms/internal/recaptcha/cd;
.super Lcom/google/android/gms/internal/recaptcha/lb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/lb<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private h:Lcom/google/android/gms/internal/recaptcha/nd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/nd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/lb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cd;->h:Lcom/google/android/gms/internal/recaptcha/nd;

    return-void
.end method


# virtual methods
.method protected final k()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cd;->h:Lcom/google/android/gms/internal/recaptcha/nd;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xb

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "delegate=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cd;->h:Lcom/google/android/gms/internal/recaptcha/nd;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cd;->h:Lcom/google/android/gms/internal/recaptcha/nd;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cb;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    :cond_0
    return-void
.end method
