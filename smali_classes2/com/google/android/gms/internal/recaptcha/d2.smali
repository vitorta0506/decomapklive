.class public final Lcom/google/android/gms/internal/recaptcha/d2;
.super Lcom/google/android/gms/internal/recaptcha/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x1fL
        .end annotation
    .end param

    const-string p1, "tiktok_systrace"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/e2;-><init>(Ljava/lang/String;)V

    return-void
.end method
