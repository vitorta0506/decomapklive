.class final Lcom/google/android/gms/measurement/internal/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/r6;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/y6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y6;Lcom/google/android/gms/measurement/internal/r6;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->c:Lcom/google/android/gms/measurement/internal/y6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Lcom/google/android/gms/measurement/internal/r6;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/w6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->c:Lcom/google/android/gms/measurement/internal/y6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Lcom/google/android/gms/measurement/internal/r6;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/w6;->b:J

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/y6;->x(Lcom/google/android/gms/measurement/internal/y6;Lcom/google/android/gms/measurement/internal/r6;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->c:Lcom/google/android/gms/measurement/internal/y6;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/y6;->e:Lcom/google/android/gms/measurement/internal/r6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->L()Lcom/google/android/gms/measurement/internal/y7;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/y7;->u(Lcom/google/android/gms/measurement/internal/r6;)V

    return-void
.end method
