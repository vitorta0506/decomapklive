.class public abstract Ldagger/android/DaggerApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Ldagger/android/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->b()Ldagger/android/b;

    move-result-object v0

    .line 3
    invoke-interface {v0, p0}, Ldagger/android/b;->inject(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ldagger/android/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ldagger/android/DaggerApplication;->c()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b()Ldagger/android/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/b<",
            "+",
            "Ldagger/android/DaggerApplication;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-direct {p0}, Ldagger/android/DaggerApplication;->c()V

    return-void
.end method
