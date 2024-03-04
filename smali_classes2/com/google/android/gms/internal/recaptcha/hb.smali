.class final Lcom/google/android/gms/internal/recaptcha/hb;
.super Lcom/google/android/gms/internal/recaptcha/db;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/cb;",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/cb;",
            "Lcom/google/android/gms/internal/recaptcha/gb;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/cb;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/cb;",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/cb;",
            "Lcom/google/android/gms/internal/recaptcha/gb;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/recaptcha/cb;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/db;-><init>(Lcom/google/android/gms/internal/recaptcha/cb$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/hb;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/hb;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/hb;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/hb;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lcom/google/android/gms/internal/recaptcha/hb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/recaptcha/ob;Lcom/google/android/gms/internal/recaptcha/ob;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hb;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/recaptcha/ob;Ljava/lang/Thread;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hb;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final c(Lcom/google/android/gms/internal/recaptcha/cb;Lcom/google/android/gms/internal/recaptcha/gb;Lcom/google/android/gms/internal/recaptcha/gb;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/cb<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/gb;",
            "Lcom/google/android/gms/internal/recaptcha/gb;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hb;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final d(Lcom/google/android/gms/internal/recaptcha/cb;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/cb<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final e(Lcom/google/android/gms/internal/recaptcha/cb;Lcom/google/android/gms/internal/recaptcha/ob;Lcom/google/android/gms/internal/recaptcha/ob;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/cb<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            "Lcom/google/android/gms/internal/recaptcha/ob;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hb;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
