.class Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->c2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Call;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->a:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->a:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->U1()V

    :cond_2
    :goto_0
    return-void
.end method
