.class public final Lcom/google/android/gms/internal/recaptcha/rc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/recaptcha/qc;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/id;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/rc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/qc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/qc;-><init>(Lcom/google/android/gms/internal/recaptcha/lc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/rc;->b:Lcom/google/android/gms/internal/recaptcha/qc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/recaptcha/rc;)Lcom/google/android/gms/internal/recaptcha/qc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/rc;->b:Lcom/google/android/gms/internal/recaptcha/qc;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/qc;)Lcom/google/android/gms/internal/recaptcha/qc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/rc;->b:Lcom/google/android/gms/internal/recaptcha/qc;

    return-object p1
.end method

.method public static c()Lcom/google/android/gms/internal/recaptcha/rc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/rc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/rc;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/recaptcha/pc;

    const/4 v0, 0x0

    .line 2
    invoke-direct {v6, p2, p0, v0}, Lcom/google/android/gms/internal/recaptcha/pc;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/lc;)V

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/mc;

    .line 3
    invoke-direct {p2, p0, v6, p1}, Lcom/google/android/gms/internal/recaptcha/mc;-><init>(Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/pc;Lcom/google/android/gms/internal/recaptcha/cc;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zd;->S()Lcom/google/android/gms/internal/recaptcha/zd;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/rc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/nd;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ce;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/ce;-><init>(Lcom/google/android/gms/internal/recaptcha/cc;)V

    .line 8
    invoke-interface {v4, p1, v6}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->h(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p2

    new-instance v7, Lcom/google/android/gms/internal/recaptcha/nc;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/recaptcha/nc;-><init>(Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/ce;Lcom/google/android/gms/internal/recaptcha/zd;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/pc;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/kc;->a:Lcom/google/android/gms/internal/recaptcha/kc;

    .line 12
    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 13
    invoke-virtual {p1, v7, v0}, Lcom/google/android/gms/internal/recaptcha/cb;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method
