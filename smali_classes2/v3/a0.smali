.class public final Lv3/a0;
.super Lr4/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/d$a;
.implements Lcom/google/android/gms/common/api/d$b;


# static fields
.field private static final h:Lcom/google/android/gms/common/api/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/gms/common/api/a$a;

.field private final d:Ljava/util/Set;

.field private final e:Lcom/google/android/gms/common/internal/e;

.field private f:Lq4/f;

.field private g:Lv3/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lq4/e;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lv3/a0;->h:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/common/internal/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lv3/a0;->h:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0}, Lr4/a;-><init>()V

    iput-object p1, p0, Lv3/a0;->a:Landroid/content/Context;

    iput-object p2, p0, Lv3/a0;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    iput-object p1, p0, Lv3/a0;->e:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/e;->g()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lv3/a0;->d:Ljava/util/Set;

    iput-object v0, p0, Lv3/a0;->c:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static bridge synthetic E0(Lv3/a0;)Lv3/z;
    .locals 0

    iget-object p0, p0, Lv3/a0;->g:Lv3/z;

    return-object p0
.end method

.method static bridge synthetic F0(Lv3/a0;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->I()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->K()Lcom/google/android/gms/common/internal/zav;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->I()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->P()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lv3/a0;->g:Lv3/z;

    .line 7
    invoke-interface {p1, v0}, Lv3/z;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lv3/a0;->f:Lq4/f;

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    return-void

    :cond_0
    iget-object v0, p0, Lv3/a0;->g:Lv3/z;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->K()Lcom/google/android/gms/common/internal/i;

    move-result-object p1

    iget-object v1, p0, Lv3/a0;->d:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lv3/z;->b(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lv3/a0;->g:Lv3/z;

    .line 11
    invoke-interface {p1, v0}, Lv3/z;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 12
    :goto_0
    iget-object p0, p0, Lv3/a0;->f:Lq4/f;

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    return-void
.end method


# virtual methods
.method public final G0(Lv3/z;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/a0;->f:Lq4/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    :cond_0
    iget-object v0, p0, Lv3/a0;->e:Lcom/google/android/gms/common/internal/e;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->k(Ljava/lang/Integer;)V

    iget-object v2, p0, Lv3/a0;->c:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lv3/a0;->a:Landroid/content/Context;

    iget-object v0, p0, Lv3/a0;->b:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lv3/a0;->e:Lcom/google/android/gms/common/internal/e;

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/e;->h()Lq4/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 5
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lv3/a0;->f:Lq4/f;

    iput-object p1, p0, Lv3/a0;->g:Lv3/z;

    iget-object p1, p0, Lv3/a0;->d:Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lv3/a0;->f:Lq4/f;

    .line 8
    invoke-interface {p1}, Lq4/f;->g()V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lv3/a0;->b:Landroid/os/Handler;

    new-instance v0, Lv3/x;

    invoke-direct {v0, p0}, Lv3/x;-><init>(Lv3/a0;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final H0()V
    .locals 1

    iget-object v0, p0, Lv3/a0;->f:Lq4/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lv3/a0;->f:Lq4/f;

    invoke-interface {p1, p0}, Lq4/f;->a(Lr4/c;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lv3/a0;->g:Lv3/z;

    invoke-interface {v0, p1}, Lv3/z;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lv3/a0;->f:Lq4/f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    return-void
.end method

.method public final q(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lv3/a0;->b:Landroid/os/Handler;

    new-instance v1, Lv3/y;

    invoke-direct {v1, p0, p1}, Lv3/y;-><init>(Lv3/a0;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
