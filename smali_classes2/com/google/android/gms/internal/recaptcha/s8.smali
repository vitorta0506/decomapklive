.class final Lcom/google/android/gms/internal/recaptcha/s8;
.super Lcom/google/android/gms/internal/recaptcha/zzkj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/zzkj<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzkj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/zzkj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    return-void
.end method

.method private final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const-string v1, "index"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/z7;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/s8;->c(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/s8;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/s8;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzi(II)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p1

    return-object p1
.end method

.method final zzf()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zzf()Z

    move-result v0

    return v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    return-object v0
.end method

.method public final zzi(II)Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/z7;->h(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/s8;->a:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    sub-int/2addr p2, p1

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzi(II)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzh()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p1

    return-object p1
.end method
