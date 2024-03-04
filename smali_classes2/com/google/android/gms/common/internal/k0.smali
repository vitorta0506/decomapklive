.class final Lcom/google/android/gms/common/internal/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/f$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/f;

.field final synthetic b:Lt4/h;

.field final synthetic c:Lcom/google/android/gms/common/internal/o$a;

.field final synthetic d:Lcom/google/android/gms/common/internal/m0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lt4/h;Lcom/google/android/gms/common/internal/o$a;Lcom/google/android/gms/common/internal/m0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/k0;->a:Lcom/google/android/gms/common/api/f;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/k0;->b:Lt4/h;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/k0;->c:Lcom/google/android/gms/common/internal/o$a;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/k0;->d:Lcom/google/android/gms/common/internal/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/k0;->a:Lcom/google/android/gms/common/api/f;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/common/api/f;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/i;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k0;->b:Lt4/h;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/k0;->c:Lcom/google/android/gms/common/internal/o$a;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/o$a;->a(Lcom/google/android/gms/common/api/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt4/h;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/k0;->b:Lt4/h;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lt4/h;->b(Ljava/lang/Exception;)V

    return-void
.end method
