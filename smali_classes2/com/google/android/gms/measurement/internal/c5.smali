.class final Lcom/google/android/gms/measurement/internal/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/f5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c5;->b:Lcom/google/android/gms/measurement/internal/f5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->b:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->b:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/k;->c0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
