.class final Lob/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Application;

.field private c:Lob/j;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lob/n;->a:Landroid/app/Activity;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lob/n;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/WindowManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lob/n;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lob/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lob/n;->b:Landroid/app/Application;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "window"

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0

    :cond_2
    return-object v1
.end method

.method b(Lob/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lob/n;->c:Lob/j;

    .line 2
    iget-object p1, p0, Lob/n;->a:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_0
    return-void
.end method

.method c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lob/n;->c:Lob/j;

    .line 2
    iget-object v0, p0, Lob/n;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lob/n;->a:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lob/n;->c:Lob/j;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lob/j;->g()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lob/n;->c()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lob/n;->a:Landroid/app/Activity;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lob/n;->a:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lob/n;->c:Lob/j;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lob/j;->g()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
