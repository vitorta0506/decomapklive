.class public abstract Lcom/google/android/gms/internal/measurement/zzif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z6;->a:Lcom/google/android/gms/internal/measurement/z6;

    return-object v0
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/b7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/b7;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Object;
.end method

.method public abstract zzb()Z
.end method
