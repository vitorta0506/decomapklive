.class final Lcom/google/android/gms/internal/play_billing/n;
.super Lcom/google/android/gms/internal/play_billing/zzp;
.source "SourceFile"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/android/gms/internal/play_billing/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzp;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/n;->c:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzp;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/n;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/n;->b:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n;->b:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/j;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n;->c:Lcom/google/android/gms/internal/play_billing/zzp;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/n;->a:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzp;->zzf(II)Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n;->c:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/n;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/n;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n;->c:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/n;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n;->c:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/play_billing/zzp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/play_billing/zzp;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n;->b:I

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/j;->c(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n;->c:Lcom/google/android/gms/internal/play_billing/zzp;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/n;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzp;->zzf(II)Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object p1

    return-object p1
.end method
