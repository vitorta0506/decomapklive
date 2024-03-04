.class final Lcom/google/android/gms/measurement/internal/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/d9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/d9;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y8;->b:Lcom/google/android/gms/measurement/internal/d9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y8;->a:Lcom/google/android/gms/measurement/internal/zzq;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->b:Lcom/google/android/gms/measurement/internal/d9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y8;->a:Lcom/google/android/gms/measurement/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d9;->V(Ljava/lang/String;)Lp4/a;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    .line 3
    invoke-virtual {v0, v1}, Lp4/a;->i(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->a:Lcom/google/android/gms/measurement/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzq;->zzv:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lp4/a;->b(Ljava/lang/String;)Lp4/a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lp4/a;->i(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->b:Lcom/google/android/gms/measurement/internal/d9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y8;->a:Lcom/google/android/gms/measurement/internal/zzq;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d9;->S(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/j5;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j5;->e0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
