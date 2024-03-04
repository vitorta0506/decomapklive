.class final Lcom/google/android/gms/measurement/internal/v8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/f9;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/d9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/d9;Lcom/google/android/gms/measurement/internal/f9;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v8;->b:Lcom/google/android/gms/measurement/internal/d9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v8;->a:Lcom/google/android/gms/measurement/internal/f9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v8;->b:Lcom/google/android/gms/measurement/internal/d9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v8;->a:Lcom/google/android/gms/measurement/internal/f9;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/d9;->k0(Lcom/google/android/gms/measurement/internal/d9;Lcom/google/android/gms/measurement/internal/f9;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->x()V

    return-void
.end method
