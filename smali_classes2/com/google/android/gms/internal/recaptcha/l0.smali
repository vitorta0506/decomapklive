.class public final synthetic Lcom/google/android/gms/internal/recaptcha/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/p7;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/g1;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lcom/google/android/gms/internal/recaptcha/v1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/g1;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/recaptcha/v1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/l0;->a:Lcom/google/android/gms/internal/recaptcha/g1;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/l0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/l0;->c:Lcom/google/android/gms/internal/recaptcha/v1;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/l0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/l0;->a:Lcom/google/android/gms/internal/recaptcha/g1;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/l0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/l0;->c:Lcom/google/android/gms/internal/recaptcha/v1;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/l0;->d:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/y1;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/y1;->A()Ljava/util/List;

    move-result-object v4

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzn(Ljava/util/Collection;)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/y1;->x()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object v5

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/recaptcha/b1;->c(Lcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/xj;)Lcom/google/android/gms/internal/recaptcha/b1;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/recaptcha/g1;->c(Lcom/google/android/gms/internal/recaptcha/b1;)V

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/dg;->o()Lcom/google/android/gms/internal/recaptcha/zf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/s1;

    .line 8
    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/recaptcha/s1;->p(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/y1;)Lcom/google/android/gms/internal/recaptcha/s1;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/v1;

    return-object p1
.end method
