.class Lcom/guochao/faceshow/activity/VideoPlayActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/VideoPlayActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/VideoPlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/VideoPlayActivity$b$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/VideoPlayActivity$b$a;-><init>(Lcom/guochao/faceshow/activity/VideoPlayActivity$b;)V

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    const v1, 0x7f12008a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->j()V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a073b

    iget-object v1, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/VideoPlayActivity;->b0(Lcom/guochao/faceshow/activity/VideoPlayActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/activity/VideoPlayActivity;->d0(Lcom/guochao/faceshow/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/activity/VideoPlayActivity;->e0(Lcom/guochao/faceshow/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    iget-object v5, v4, Lcom/guochao/faceshow/activity/VideoPlayActivity;->e:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iget-boolean v4, v4, Lcom/guochao/faceshow/activity/VideoPlayActivity;->f:Z

    invoke-static {v1, v2, v3, v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->U2(IILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/Comment;Z)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 11
    :cond_4
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/VideoPlayActivity$b$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/VideoPlayActivity$b$b;-><init>(Lcom/guochao/faceshow/activity/VideoPlayActivity$b;)V

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    const v1, 0x7f120089

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->j()V

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_5
    :goto_0
    return-void
.end method
