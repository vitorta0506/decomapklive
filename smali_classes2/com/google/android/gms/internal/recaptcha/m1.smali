.class public final Lcom/google/android/gms/internal/recaptcha/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/j1;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/google/android/gms/internal/recaptcha/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/a0<",
            "Lcom/google/android/gms/internal/recaptcha/dk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/recaptcha/j1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/m1;->a:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/n1;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/m1;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/a0;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/n1;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dk;->u()Lcom/google/android/gms/internal/recaptcha/dk;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/recaptcha/a0;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/recaptcha/dg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/m1;->c:Lcom/google/android/gms/internal/recaptcha/a0;

    return-void
.end method
