.class public abstract Lcom/google/android/gms/internal/recaptcha/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/o4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/gh;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/o4<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/pf;)Lcom/google/android/gms/internal/recaptcha/v5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            ">(TT;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/v5<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/u5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/u5;-><init>(Lcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/pf;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/recaptcha/pf;
.end method

.method public abstract b()Lcom/google/android/gms/internal/recaptcha/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
