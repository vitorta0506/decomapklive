.class final Lcom/google/android/gms/measurement/internal/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J

.field final b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/k8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k8;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j8;->c:Lcom/google/android/gms/measurement/internal/k8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/j8;->a:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/j8;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j8;->c:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/i8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/i8;-><init>(Lcom/google/android/gms/measurement/internal/j8;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method
