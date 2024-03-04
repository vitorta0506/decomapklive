.class final Lcom/google/android/gms/measurement/internal/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/r6;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/r6;

.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/measurement/internal/y6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y6;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/r6;Lcom/google/android/gms/measurement/internal/r6;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s6;->e:Lcom/google/android/gms/measurement/internal/y6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s6;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/s6;->b:Lcom/google/android/gms/measurement/internal/r6;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/s6;->c:Lcom/google/android/gms/measurement/internal/r6;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/s6;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s6;->e:Lcom/google/android/gms/measurement/internal/y6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s6;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/s6;->b:Lcom/google/android/gms/measurement/internal/r6;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/s6;->c:Lcom/google/android/gms/measurement/internal/r6;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/s6;->d:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/y6;->w(Lcom/google/android/gms/measurement/internal/y6;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/r6;Lcom/google/android/gms/measurement/internal/r6;J)V

    return-void
.end method
