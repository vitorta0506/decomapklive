.class final Lcom/google/android/gms/internal/recaptcha/c9;
.super Lcom/google/android/gms/internal/recaptcha/zzkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/zzkn<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/android/gms/internal/recaptcha/zzkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkl<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzkl;Lcom/google/android/gms/internal/recaptcha/zzkj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzkl<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/c9;->a:Lcom/google/android/gms/internal/recaptcha/zzkl;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/c9;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c9;->a:Lcom/google/android/gms/internal/recaptcha/zzkl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzkl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c9;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzq(I)Lcom/google/android/gms/internal/recaptcha/k9;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c9;->a:Lcom/google/android/gms/internal/recaptcha/zzkl;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/c9;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c9;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/recaptcha/j9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/j9<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c9;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

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
