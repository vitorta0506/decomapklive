.class public abstract Lcom/google/android/gms/internal/recaptcha/zzjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/recaptcha/zzjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/recaptcha/zzjj<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/f7;->a:Lcom/google/android/gms/internal/recaptcha/f7;

    return-object v0
.end method

.method public static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/recaptcha/zzjj<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/recaptcha/f7;->a:Lcom/google/android/gms/internal/recaptcha/f7;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/a8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/a8;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/recaptcha/zzjj<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/a8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/a8;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract zzb()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract zzc()Z
.end method
