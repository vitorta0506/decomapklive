.class final Lcom/google/android/gms/measurement/internal/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzaw;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/f5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f5;Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/f5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z4;->a:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/z4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->a:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z4;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d9;->k(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V

    return-void
.end method
