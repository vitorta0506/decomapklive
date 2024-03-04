.class Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/PowOffBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;Lcom/guochao/faceshow/aaspring/beans/PowOffBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/beans/PowOffBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/poweroff/PowOffActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/beans/PowOffBean;

    const-string v2, "PowOffBean"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
