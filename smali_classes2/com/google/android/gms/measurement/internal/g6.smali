.class final Lcom/google/android/gms/measurement/internal/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lp4/a;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Lp4/a;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/m6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m6;Lp4/a;JIJZLp4/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/m6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g6;->a:Lp4/a;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/g6;->b:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/g6;->c:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/g6;->d:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/g6;->e:Z

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/g6;->f:Lp4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g6;->a:Lp4/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m6;->J(Lp4/a;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/m6;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/g6;->b:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m6;->z(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/g6;->a:Lp4/a;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/g6;->c:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/g6;->d:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/g6;->e:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/m6;->c0(Lcom/google/android/gms/measurement/internal/m6;Lp4/a;IJZZ)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nd;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/measurement/internal/z2;->u0:Lcom/google/android/gms/measurement/internal/y2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/g;->B(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/y2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/m6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g6;->a:Lp4/a;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g6;->f:Lp4/a;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m6;->b0(Lcom/google/android/gms/measurement/internal/m6;Lp4/a;Lp4/a;)V

    :cond_0
    return-void
.end method
