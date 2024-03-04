.class final Lcom/google/android/gms/internal/recaptcha/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/recaptcha/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/b6;->a:Lcom/google/android/gms/internal/recaptcha/cc;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/b6;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/recaptcha/b6;)Lcom/google/android/gms/internal/recaptcha/cc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/b6;->a:Lcom/google/android/gms/internal/recaptcha/cc;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/recaptcha/b6;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/b6;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/b6;->a:Lcom/google/android/gms/internal/recaptcha/cc;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/b6;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
