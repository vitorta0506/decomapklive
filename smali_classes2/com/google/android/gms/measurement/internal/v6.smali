.class final Lcom/google/android/gms/measurement/internal/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/y6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y6;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v6;->b:Lcom/google/android/gms/measurement/internal/y6;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/v6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v6;->b:Lcom/google/android/gms/measurement/internal/y6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->y()Lcom/google/android/gms/measurement/internal/x1;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/v6;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/x1;->n(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v6;->b:Lcom/google/android/gms/measurement/internal/y6;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/y6;->e:Lcom/google/android/gms/measurement/internal/r6;

    return-void
.end method
