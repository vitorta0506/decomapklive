.class public final synthetic Lcom/google/android/gms/internal/recaptcha/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/k5;

.field public final synthetic b:Lcom/google/android/gms/internal/recaptcha/dc;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/k5;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/d5;->a:Lcom/google/android/gms/internal/recaptcha/k5;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/d5;->b:Lcom/google/android/gms/internal/recaptcha/dc;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/d5;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/d5;->a:Lcom/google/android/gms/internal/recaptcha/k5;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/d5;->b:Lcom/google/android/gms/internal/recaptcha/dc;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/d5;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/k5;->g(Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
