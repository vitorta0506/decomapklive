.class final Lcom/google/android/gms/internal/recaptcha/gc;
.super Lcom/google/android/gms/internal/recaptcha/ic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/ic<",
        "Lcom/google/android/gms/internal/recaptcha/nd;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/recaptcha/cc;

.field final synthetic f:Lcom/google/android/gms/internal/recaptcha/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/jc;Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/gc;->f:Lcom/google/android/gms/internal/recaptcha/jc;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/recaptcha/ic;-><init>(Lcom/google/android/gms/internal/recaptcha/jc;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/gc;->e:Lcom/google/android/gms/internal/recaptcha/cc;

    return-void
.end method


# virtual methods
.method final bridge synthetic b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/gc;->e:Lcom/google/android/gms/internal/recaptcha/cc;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/cc;->zza()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/gc;->e:Lcom/google/android/gms/internal/recaptcha/cc;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/recaptcha/z7;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/gc;->e:Lcom/google/android/gms/internal/recaptcha/cc;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/nd;

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/gc;->f:Lcom/google/android/gms/internal/recaptcha/jc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    return-void
.end method
