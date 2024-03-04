.class final Lcom/google/android/gms/internal/recaptcha/t8;
.super Lcom/google/android/gms/internal/recaptcha/zzkj;
.source "SourceFile"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/android/gms/internal/recaptcha/zzkj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzkj;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/t8;->c:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/zzkj;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/t8;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/t8;->b:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->b:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/z7;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->c:Lcom/google/android/gms/internal/recaptcha/zzkj;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/t8;->a:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzi(II)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->c:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/t8;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/t8;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->c:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/t8;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->c:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(II)Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/recaptcha/zzkj;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->b:I

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/z7;->h(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/t8;->c:Lcom/google/android/gms/internal/recaptcha/zzkj;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/t8;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzi(II)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p1

    return-object p1
.end method
