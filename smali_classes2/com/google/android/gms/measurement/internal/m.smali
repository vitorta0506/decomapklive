.class final Lcom/google/android/gms/measurement/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/i5;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/n;Lcom/google/android/gms/measurement/internal/i5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m;->a:Lcom/google/android/gms/measurement/internal/i5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->a:Lcom/google/android/gms/measurement/internal/i5;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/i5;->d()Lcom/google/android/gms/measurement/internal/c;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->a:Lcom/google/android/gms/measurement/internal/i5;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/i5;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/n;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/n;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/n;->a(Lcom/google/android/gms/measurement/internal/n;J)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/n;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n;->c()V

    :cond_1
    return-void
.end method
