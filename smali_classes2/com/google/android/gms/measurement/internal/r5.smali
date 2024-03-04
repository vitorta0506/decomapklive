.class final Lcom/google/android/gms/measurement/internal/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/m6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m6;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r5;->b:Lcom/google/android/gms/measurement/internal/m6;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/r5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r5;->b:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x3;->k:Lcom/google/android/gms/measurement/internal/t3;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/r5;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/t3;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r5;->b:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/r5;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
