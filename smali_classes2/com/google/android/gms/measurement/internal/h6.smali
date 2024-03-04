.class final Lcom/google/android/gms/measurement/internal/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lp4/a;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lp4/a;

.field final synthetic f:Lcom/google/android/gms/measurement/internal/m6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m6;Lp4/a;IJZLp4/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h6;->f:Lcom/google/android/gms/measurement/internal/m6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/h6;->a:Lp4/a;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/h6;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/h6;->c:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/h6;->d:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/h6;->e:Lp4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h6;->f:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h6;->a:Lp4/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m6;->J(Lp4/a;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h6;->f:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/h6;->a:Lp4/a;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/h6;->b:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/h6;->c:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/h6;->d:Z

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/m6;->c0(Lcom/google/android/gms/measurement/internal/m6;Lp4/a;IJZZ)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nd;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h6;->f:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/z2;->u0:Lcom/google/android/gms/measurement/internal/y2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/g;->B(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/y2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h6;->f:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h6;->a:Lp4/a;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h6;->e:Lp4/a;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m6;->b0(Lcom/google/android/gms/measurement/internal/m6;Lp4/a;Lp4/a;)V

    :cond_0
    return-void
.end method
