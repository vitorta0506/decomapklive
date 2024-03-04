.class final Lcom/google/android/gms/measurement/internal/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/measurement/internal/q3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/q3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p3;->b:Lcom/google/android/gms/measurement/internal/q3;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/p3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p3;->b:Lcom/google/android/gms/measurement/internal/q3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q3;->a(Lcom/google/android/gms/measurement/internal/q3;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/p3;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d9;->o(Z)V

    return-void
.end method
