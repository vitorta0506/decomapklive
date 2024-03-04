.class public final synthetic Lcom/google/android/gms/measurement/internal/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/h4;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/h4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b4;->a:Lcom/google/android/gms/measurement/internal/h4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b4;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b4;->a:Lcom/google/android/gms/measurement/internal/h4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b4;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/k;->R(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/j5;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "platform"

    const-string v5, "android"

    .line 4
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "package_name"

    .line 5
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->q()J

    const-wide/32 v0, 0x11d28

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gmp_version"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j5;->g0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app_version"

    .line 9
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j5;->L()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "app_version_int"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j5;->U()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dynamite_version"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v3
.end method
