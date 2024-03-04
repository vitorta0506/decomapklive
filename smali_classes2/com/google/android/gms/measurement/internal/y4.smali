.class final Lcom/google/android/gms/measurement/internal/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzaw;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/f5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f5;Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y4;->c:Lcom/google/android/gms/measurement/internal/f5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y4;->a:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y4;->b:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y4;->c:Lcom/google/android/gms/measurement/internal/f5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y4;->a:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y4;->b:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f5;->D0(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y4;->c:Lcom/google/android/gms/measurement/internal/f5;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y4;->b:Lcom/google/android/gms/measurement/internal/zzq;

    .line 2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/f5;->F0(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    return-void
.end method
