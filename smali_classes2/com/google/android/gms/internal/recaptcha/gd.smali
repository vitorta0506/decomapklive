.class final Lcom/google/android/gms/internal/recaptcha/gd;
.super Lcom/google/android/gms/internal/recaptcha/lb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/lb<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/lb;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cb;->cancel(Z)Z

    return-void
.end method
