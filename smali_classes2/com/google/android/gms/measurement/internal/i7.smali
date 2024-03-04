.class final Lcom/google/android/gms/measurement/internal/i7;
.super Lcom/google/android/gms/measurement/internal/n;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/i5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Lcom/google/android/gms/measurement/internal/y7;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/i5;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Lcom/google/android/gms/measurement/internal/y7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->z()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Inactivity, disconnecting from the service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->Q()V

    return-void
.end method
