.class final Lcom/google/android/gms/internal/recaptcha/f9;
.super Lcom/google/android/gms/internal/recaptcha/zzkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/zzkn<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final f:[Ljava/lang/Object;

.field static final g:Lcom/google/android/gms/internal/recaptcha/f9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/f9<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field final transient c:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Lcom/google/android/gms/internal/recaptcha/f9;->f:[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/f9;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/recaptcha/f9;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/f9;->g:Lcom/google/android/gms/internal/recaptcha/f9;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f9;->a:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/f9;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/f9;->c:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/recaptcha/f9;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/recaptcha/f9;->e:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f9;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/n8;->a(I)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/f9;->d:I

    and-int/2addr v2, v3

    .line 3
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/f9;->b:I

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zzd()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzq(I)Lcom/google/android/gms/internal/recaptcha/k9;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/f9;->e:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/f9;->a:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/f9;->e:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/f9;->e:I

    return p1
.end method

.method final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/f9;->e:I

    return v0
.end method

.method final zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/recaptcha/j9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/j9<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zzd()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzq(I)Lcom/google/android/gms/internal/recaptcha/k9;

    move-result-object v0

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f9;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzi()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f9;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/f9;->e:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzl([Ljava/lang/Object;I)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    return-object v0
.end method

.method final zzm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
