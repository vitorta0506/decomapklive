.class public final Lcom/google/android/gms/internal/recaptcha/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(ZLcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/zc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/bd;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/bd;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/jc;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/bd;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/recaptcha/bd;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/recaptcha/jc;-><init>(Lcom/google/android/gms/internal/recaptcha/zzke;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/jc;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/bd;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/recaptcha/bd;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/recaptcha/jc;-><init>(Lcom/google/android/gms/internal/recaptcha/zzke;ZLjava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/cc;)V

    return-object v0
.end method
