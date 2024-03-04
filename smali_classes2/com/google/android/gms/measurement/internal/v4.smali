.class final Lcom/google/android/gms/measurement/internal/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/f5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f5;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Lcom/google/android/gms/measurement/internal/f5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v4;->a:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v4;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d9;->v(Lcom/google/android/gms/measurement/internal/zzq;)V

    return-void
.end method
