.class final Lcom/google/android/gms/internal/common/f;
.super Lcom/google/android/gms/internal/common/zzag;
.source "SourceFile"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzag;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/common/f;->c:Lcom/google/android/gms/internal/common/zzag;

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzag;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/common/f;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/common/f;->b:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/f;->b:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/q;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->c:Lcom/google/android/gms/internal/common/zzag;

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->a:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/f;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzag;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->c:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->c:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->a:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->c:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/common/zzag;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/f;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/q;->c(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->c:Lcom/google/android/gms/internal/common/zzag;

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/common/zzag;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p1

    return-object p1
.end method
