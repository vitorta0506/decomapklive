.class final Lcom/google/android/gms/internal/auth/n;
.super Lcom/google/android/gms/internal/auth/p;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:I

.field final synthetic c:Lcom/google/android/gms/internal/auth/zzee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzee;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/n;->c:Lcom/google/android/gms/internal/auth/zzee;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/p;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/auth/n;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzee;->zzd()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/auth/n;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/auth/n;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/auth/n;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/n;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/auth/n;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/auth/n;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/n;->c:Lcom/google/android/gms/internal/auth/zzee;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/auth/zzee;->zzb(I)B

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method