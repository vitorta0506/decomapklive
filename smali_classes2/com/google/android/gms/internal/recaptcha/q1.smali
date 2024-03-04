.class public final Lcom/google/android/gms/internal/recaptcha/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/recaptcha/j1;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/google/android/gms/internal/recaptcha/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/a0<",
            "Lcom/google/android/gms/internal/recaptcha/fk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/j1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/q1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/q1;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/n1;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/q1;->c:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/a0;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/n1;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/fk;->u()Lcom/google/android/gms/internal/recaptcha/fk;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/google/android/gms/internal/recaptcha/a0;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/recaptcha/dg;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/q1;->d:Lcom/google/android/gms/internal/recaptcha/a0;

    return-void
.end method
