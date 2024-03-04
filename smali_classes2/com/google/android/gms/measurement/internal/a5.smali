.class final Lcom/google/android/gms/measurement/internal/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzaw;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/f5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f5;Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a5;->c:Lcom/google/android/gms/measurement/internal/f5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a5;->a:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/a5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_r"

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/a5;->c:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d9;->e()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/a5;->c:Lcom/google/android/gms/measurement/internal/f5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f5;->E0(Lcom/google/android/gms/measurement/internal/f5;)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d9;->d0()Lcom/google/android/gms/measurement/internal/q6;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/a5;->a:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/a5;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/n4;->t()V

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v13}, Lcom/google/android/gms/common/internal/p;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/measurement/internal/z2;->U:Lcom/google/android/gms/measurement/internal/y2;

    invoke-virtual {v4, v13, v5}, Lcom/google/android/gms/measurement/internal/g;->B(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/y2;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v14, 0x0

    if-nez v4, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v13}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B

    goto/16 :goto_a

    .line 11
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    const-string v6, "_iapx"

    .line 12
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    .line 15
    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/measurement/internal/h3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u4;->w()Lcom/google/android/gms/internal/measurement/s4;

    move-result-object v6

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k;->e0()V

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/k;->R(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/j5;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->f0()V

    goto/16 :goto_a

    .line 25
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->J()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    goto :goto_0

    .line 28
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w4;->L1()Lcom/google/android/gms/internal/measurement/v4;

    move-result-object v15

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/measurement/v4;->Y(I)Lcom/google/android/gms/internal/measurement/v4;

    const-string v7, "android"

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/v4;->T(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->d0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->d0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/v4;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 31
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->f0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->f0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/v4;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 33
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->g0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->g0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/v4;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 35
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->L()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v12, v7, v9

    if-eqz v12, :cond_7

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->L()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/v4;->y(I)Lcom/google/android/gms/internal/measurement/v4;

    .line 37
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->W()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/v4;->P(J)Lcom/google/android/gms/internal/measurement/v4;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->U()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/v4;->H(J)Lcom/google/android/gms/internal/measurement/v4;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->i0()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->b0()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 42
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/v4;->O(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    goto :goto_1

    .line 43
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 44
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/v4;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 45
    :cond_9
    :goto_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 46
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/d9;->V(Ljava/lang/String;)Lp4/a;

    move-result-object v7

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->T()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/v4;->D(J)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 48
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->o()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 49
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v8

    .line 50
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/v4;->m0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/g;->C(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 51
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    .line 52
    invoke-virtual {v7, v8}, Lp4/a;->i(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 53
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 54
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/v4;->G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 55
    :cond_a
    invoke-virtual {v7}, Lp4/a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/v4;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 56
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    .line 57
    invoke-virtual {v7, v8}, Lp4/a;->i(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->I()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/d9;->e0()Lcom/google/android/gms/measurement/internal/a8;

    move-result-object v8

    .line 58
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->d0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/a8;->n(Ljava/lang/String;Lp4/a;)Landroid/util/Pair;

    move-result-object v8

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->I()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    .line 60
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_b

    .line 61
    :try_start_3
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/q6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/v4;->Z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_b

    .line 66
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/v4;->R(Z)Lcom/google/android/gms/internal/measurement/v4;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 67
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    goto/16 :goto_0

    .line 70
    :cond_b
    :goto_2
    :try_start_5
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 71
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->A()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v8

    .line 72
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/h5;->k()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/v4;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 73
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->A()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v8

    .line 74
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/h5;->k()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/v4;->S(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 75
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->A()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v8

    .line 76
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o;->p()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/v4;->g0(I)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 77
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->A()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v8

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/v4;->k0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    .line 79
    invoke-virtual {v7, v8}, Lp4/a;->i(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->e0()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 81
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/q6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/v4;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :cond_c
    :try_start_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 86
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/v4;->N(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 87
    :cond_d
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->d0()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 88
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v8

    .line 89
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/k;->c0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 90
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/i9;

    const-string v11, "_lte"

    .line 91
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/i9;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_3

    :cond_f
    move-object v10, v14

    :goto_3
    const-wide/16 v24, 0x0

    if-eqz v10, :cond_10

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/i9;->e:Ljava/lang/Object;

    if-nez v9, :cond_11

    :cond_10
    new-instance v9, Lcom/google/android/gms/measurement/internal/i9;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 92
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v10

    .line 93
    invoke-interface {v10}, Le4/d;->a()J

    move-result-wide v21

    .line 94
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/i9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 95
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 96
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v7

    .line 97
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/k;->x(Lcom/google/android/gms/measurement/internal/i9;)Z

    :cond_11
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 98
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d9;->g0()Lcom/google/android/gms/measurement/internal/g9;

    move-result-object v7

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 99
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v9

    .line 100
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v9

    const-string v10, "Checking account type status for ad personalization signals"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/n4;->A()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v9

    .line 102
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o;->s()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_14

    .line 103
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->d0()Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-static {v9}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->I()Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 106
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/d9;->a0()Lcom/google/android/gms/measurement/internal/h4;

    move-result-object v12

    .line 107
    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/h4;->B(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 108
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v12

    .line 109
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v12

    const-string v14, "Turning off ad personalization due to account type"

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 110
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 111
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, "_npa"

    .line 112
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/google/android/gms/measurement/internal/i9;

    .line 113
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/i9;->c:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 114
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_12
    const/4 v5, 0x0

    goto :goto_4

    :cond_13
    :goto_5
    new-instance v5, Lcom/google/android/gms/measurement/internal/i9;

    const-string v19, "auto"

    const-string v20, "_npa"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 115
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v7

    .line 116
    invoke-interface {v7}, Le4/d;->a()J

    move-result-wide v21

    .line 117
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/i9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 118
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_14
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/f5;

    const/4 v7, 0x0

    .line 120
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_15

    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f5;->z()Lcom/google/android/gms/internal/measurement/e5;

    move-result-object v9

    .line 122
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/i9;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/i9;->c:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/e5;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e5;

    .line 123
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/i9;

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/i9;->d:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/e5;->x(J)Lcom/google/android/gms/internal/measurement/e5;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 124
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/d9;->g0()Lcom/google/android/gms/measurement/internal/g9;

    move-result-object v10

    .line 125
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/i9;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/i9;->e:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/measurement/internal/g9;->K(Lcom/google/android/gms/internal/measurement/e5;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/f5;

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_6

    .line 127
    :cond_15
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/v4;->D0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/v4;

    .line 128
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/k3;->b(Lcom/google/android/gms/measurement/internal/zzaw;)Lcom/google/android/gms/measurement/internal/k3;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 129
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/k3;->d:Landroid/os/Bundle;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 130
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v9

    .line 131
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/k;->Q(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 132
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/k9;->z(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 133
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 134
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v8

    .line 135
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/g;->n(Ljava/lang/String;)I

    move-result v8

    .line 136
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/k9;->A(Lcom/google/android/gms/measurement/internal/k3;I)V

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/k3;->d:Landroid/os/Bundle;

    const-string v5, "_c"

    const-wide/16 v7, 0x1

    .line 137
    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 138
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v7, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x1

    .line 140
    invoke-virtual {v14, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_o"

    .line 141
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 142
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v5

    .line 143
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/v4;->m0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/k9;->T(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 144
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v5

    const-wide/16 v7, 0x1

    .line 145
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-virtual {v5, v14, v8, v7}, Lcom/google/android/gms/measurement/internal/k9;->C(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 146
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v5

    .line 147
    invoke-virtual {v5, v14, v0, v7}, Lcom/google/android/gms/measurement/internal/k9;->C(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v0

    .line 149
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/measurement/internal/k;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/q;

    move-result-object v0

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/measurement/internal/q;

    .line 150
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v11, v17

    const-wide/16 v16, 0x0

    move-object/from16 v28, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v4

    move-object v4, v0

    move-object/from16 v27, v5

    move-object v5, v13

    move-object/from16 v29, v6

    move-object/from16 v6, v27

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/4 v1, 0x0

    move-wide/from16 v13, v21

    .line 151
    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/measurement/internal/q;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v11, v24

    goto :goto_7

    :cond_17
    move-object/from16 v23, v4

    move-object/from16 v29, v6

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    const/4 v1, 0x0

    .line 152
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/q;->f:J

    .line 153
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    .line 154
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/q;->c(J)Lcom/google/android/gms/measurement/internal/q;

    move-result-object v0

    move-wide v11, v4

    .line 155
    :goto_7
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 156
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/k;->q(Lcom/google/android/gms/measurement/internal/q;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/p;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 158
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    move-object v4, v14

    move-object/from16 v7, v26

    move-object/from16 v13, v27

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/n4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 159
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l4;->A()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v4

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/p;->d:J

    .line 160
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/k4;->D(J)Lcom/google/android/gms/internal/measurement/k4;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/p;->b:Ljava/lang/String;

    .line 161
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/k4;->z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/k4;

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/p;->e:J

    .line 162
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/k4;->C(J)Lcom/google/android/gms/internal/measurement/k4;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/p;->f:Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v6, Lcom/google/android/gms/measurement/internal/r;

    .line 163
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/zzau;)V

    .line 164
    :cond_18
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 165
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/r;->a()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p4;->A()Lcom/google/android/gms/internal/measurement/o4;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/o4;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/o4;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/p;->f:Lcom/google/android/gms/measurement/internal/zzau;

    .line 167
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzau;->R(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_18

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 168
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/d9;->g0()Lcom/google/android/gms/measurement/internal/g9;

    move-result-object v8

    .line 169
    invoke-virtual {v8, v7, v5}, Lcom/google/android/gms/measurement/internal/g9;->J(Lcom/google/android/gms/internal/measurement/o4;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/k4;->v(Lcom/google/android/gms/internal/measurement/o4;)Lcom/google/android/gms/internal/measurement/k4;

    goto :goto_8

    :cond_19
    move-object/from16 v5, v28

    .line 171
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/v4;->H0(Lcom/google/android/gms/internal/measurement/k4;)Lcom/google/android/gms/internal/measurement/v4;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z4;->w()Lcom/google/android/gms/internal/measurement/x4;

    move-result-object v6

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n4;->w()Lcom/google/android/gms/internal/measurement/m4;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/q;->c:J

    .line 174
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/m4;->r(J)Lcom/google/android/gms/internal/measurement/m4;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 175
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/m4;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m4;

    .line 176
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/x4;->r(Lcom/google/android/gms/internal/measurement/m4;)Lcom/google/android/gms/internal/measurement/x4;

    .line 177
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/v4;->V(Lcom/google/android/gms/internal/measurement/x4;)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d9;->T()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v6

    .line 179
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/j5;->d0()Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 181
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/v4;->r0()Ljava/util/List;

    move-result-object v9

    .line 182
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->t()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->t()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 184
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/b;->m(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/v4;->x0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/v4;

    .line 186
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->J()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 187
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->t()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/v4;->e0(J)Lcom/google/android/gms/internal/measurement/v4;

    .line 188
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->t()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/v4;->J(J)Lcom/google/android/gms/internal/measurement/v4;

    .line 189
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/j5;->X()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_1b

    .line 190
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/v4;->W(J)Lcom/google/android/gms/internal/measurement/v4;

    .line 191
    :cond_1b
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/j5;->Z()J

    move-result-wide v6

    cmp-long v8, v6, v24

    if-eqz v8, :cond_1c

    .line 192
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/v4;->X(J)Lcom/google/android/gms/internal/measurement/v4;

    goto :goto_9

    :cond_1c
    if-eqz v0, :cond_1d

    .line 193
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/v4;->X(J)Lcom/google/android/gms/internal/measurement/v4;

    .line 194
    :cond_1d
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/j5;->b()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nd;->b()Z

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 196
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/z2;->t0:Lcom/google/android/gms/measurement/internal/y2;

    .line 197
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/g;->B(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/y2;)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v0, :cond_1e

    .line 198
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/v4;->d0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 199
    :cond_1e
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/j5;->e()V

    .line 200
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/j5;->Y()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/v4;->z(I)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->q()J

    const-wide/32 v3, 0x11d28

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/v4;->i0(J)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Le4/d;->a()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/v4;->h0(J)Lcom/google/android/gms/internal/measurement/v4;

    const/4 v0, 0x1

    .line 205
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/v4;->b0(Z)Lcom/google/android/gms/internal/measurement/v4;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 206
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->z()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/z2;->B0:Lcom/google/android/gms/measurement/internal/y2;

    .line 207
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/g;->B(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/y2;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 208
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/v4;->m0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/d9;->h(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/v4;)V

    :cond_1f
    move-object/from16 v0, v29

    .line 209
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/s4;->r(Lcom/google/android/gms/internal/measurement/v4;)Lcom/google/android/gms/internal/measurement/s4;

    .line 210
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/v4;->u0()J

    move-result-wide v3

    move-object/from16 v6, v23

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/j5;->C(J)V

    .line 211
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/v4;->t0()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/j5;->z(J)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/k;->p(Lcom/google/android/gms/measurement/internal/j5;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/k;->o()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 216
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/k;->f0()V

    :try_start_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 218
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d9;->g0()Lcom/google/android/gms/measurement/internal/g9;

    move-result-object v3

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i7;->j()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/g9;->O([B)[B

    move-result-object v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 220
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 221
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/j3;->z(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 223
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/h3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v14, v1

    goto :goto_a

    :catch_2
    move-exception v0

    .line 224
    :try_start_9
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 225
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v14, v1, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    goto/16 :goto_0

    :goto_a
    return-object v14

    :catchall_0
    move-exception v0

    .line 227
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d9;->W()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k;->f0()V

    .line 230
    throw v0
.end method
