.class final Lcom/google/android/gms/measurement/internal/q8;
.super Lcom/google/android/gms/measurement/internal/n;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/r8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/r8;Lcom/google/android/gms/measurement/internal/i5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/i5;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r8;->m()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->C()V

    return-void
.end method
