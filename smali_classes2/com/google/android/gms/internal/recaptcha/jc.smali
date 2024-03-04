.class final Lcom/google/android/gms/internal/recaptcha/jc;
.super Lcom/google/android/gms/internal/recaptcha/vb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/vb<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private o:Lcom/google/android/gms/internal/recaptcha/ic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/ic<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzke;ZLjava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/cc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzke<",
            "+",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/vb;-><init>(Lcom/google/android/gms/internal/recaptcha/zzke;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/gc;

    .line 2
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/recaptcha/gc;-><init>(Lcom/google/android/gms/internal/recaptcha/jc;Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/jc;->o:Lcom/google/android/gms/internal/recaptcha/ic;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/vb;->j0()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzke;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzke<",
            "+",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/vb;-><init>(Lcom/google/android/gms/internal/recaptcha/zzke;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/hc;

    .line 5
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/recaptcha/hc;-><init>(Lcom/google/android/gms/internal/recaptcha/jc;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/jc;->o:Lcom/google/android/gms/internal/recaptcha/ic;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/vb;->j0()V

    return-void
.end method

.method static synthetic k0(Lcom/google/android/gms/internal/recaptcha/jc;Lcom/google/android/gms/internal/recaptcha/ic;)Lcom/google/android/gms/internal/recaptcha/ic;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/jc;->o:Lcom/google/android/gms/internal/recaptcha/ic;

    return-object p1
.end method


# virtual methods
.method protected final D()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jc;->o:Lcom/google/android/gms/internal/recaptcha/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/md;->i()V

    :cond_0
    return-void
.end method

.method final Z(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/recaptcha/vb;->Z(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/jc;->o:Lcom/google/android/gms/internal/recaptcha/ic;

    :cond_0
    return-void
.end method

.method final i0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jc;->o:Lcom/google/android/gms/internal/recaptcha/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/ic;->k()V

    :cond_0
    return-void
.end method
