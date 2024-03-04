.class public final synthetic Lcom/google/android/gms/measurement/internal/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/m6;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/m6;Landroid/os/Bundle;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/m6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Landroid/os/Bundle;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/m5;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/m5;->c:J

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n4;->B()Lcom/google/android/gms/measurement/internal/b3;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/b3;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/m6;->F(Landroid/os/Bundle;IJ)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Using developer consent only; google app id found"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void
.end method
