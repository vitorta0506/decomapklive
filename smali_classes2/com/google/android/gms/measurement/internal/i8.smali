.class public final synthetic Lcom/google/android/gms/measurement/internal/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/j8;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/j8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i8;->a:Lcom/google/android/gms/measurement/internal/j8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i8;->a:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/j8;->c:Lcom/google/android/gms/measurement/internal/k8;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/j8;->a:J

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/j8;->b:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v4, "Application going to the background"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->F()Lcom/google/android/gms/measurement/internal/x3;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x3;->q:Lcom/google/android/gms/measurement/internal/r3;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/r3;->a(Z)V

    new-instance v7, Landroid/os/Bundle;

    .line 6
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/m8;->b(J)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/m8;->d(ZZJ)Z

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/m6;->v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
