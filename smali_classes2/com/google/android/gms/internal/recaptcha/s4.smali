.class public final synthetic Lcom/google/android/gms/internal/recaptcha/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/cc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/z4;

.field public final synthetic b:Lcom/google/android/gms/internal/recaptcha/nd;

.field public final synthetic c:Lcom/google/android/gms/internal/recaptcha/dc;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/z4;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/s4;->a:Lcom/google/android/gms/internal/recaptcha/z4;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/s4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/s4;->c:Lcom/google/android/gms/internal/recaptcha/dc;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/s4;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/s4;->a:Lcom/google/android/gms/internal/recaptcha/z4;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/s4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/s4;->c:Lcom/google/android/gms/internal/recaptcha/dc;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/s4;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/recaptcha/t4;

    .line 1
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/recaptcha/t4;-><init>(Lcom/google/android/gms/internal/recaptcha/z4;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 3
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/recaptcha/x4;

    .line 5
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/x4;-><init>(Lcom/google/android/gms/internal/recaptcha/z4;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/nd;)V

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 8
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    return-object v0
.end method
