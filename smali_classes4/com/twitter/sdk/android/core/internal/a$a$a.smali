.class Lcom/twitter/sdk/android/core/internal/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/a$a;->b(Lcom/twitter/sdk/android/core/internal/a$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/a$b;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/a$a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/a$a;Lcom/twitter/sdk/android/core/internal/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->b:Lcom/twitter/sdk/android/core/internal/a$a;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/a$b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$b;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$b;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/a$b;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$b;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a$a$a;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$b;->g(Landroid/app/Activity;)V

    return-void
.end method
