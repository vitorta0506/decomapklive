.class final Lcom/google/android/gms/measurement/internal/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/l5;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/n4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/l5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m4;->b:Lcom/google/android/gms/measurement/internal/n4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m4;->a:Lcom/google/android/gms/measurement/internal/l5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m4;->b:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m4;->a:Lcom/google/android/gms/measurement/internal/l5;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/n4;->e(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/l5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m4;->b:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m4;->a:Lcom/google/android/gms/measurement/internal/l5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/l5;->g:Lcom/google/android/gms/internal/measurement/zzcl;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n4;->m(Lcom/google/android/gms/internal/measurement/zzcl;)V

    return-void
.end method
