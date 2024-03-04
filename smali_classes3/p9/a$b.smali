.class Lp9/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic b:[Z

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lp9/a$f;

.field final synthetic f:Z

.field final synthetic g:Lp9/a;


# direct methods
.method constructor <init>(Lp9/a;Landroidx/lifecycle/LifecycleOwner;[ZZILp9/a$f;Z)V
    .locals 0

    iput-object p1, p0, Lp9/a$b;->g:Lp9/a;

    iput-object p2, p0, Lp9/a$b;->a:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lp9/a$b;->b:[Z

    iput-boolean p4, p0, Lp9/a$b;->c:Z

    iput p5, p0, Lp9/a$b;->d:I

    iput-object p6, p0, Lp9/a$b;->e:Lp9/a$f;

    iput-boolean p7, p0, Lp9/a$b;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/a$b;->a:Landroidx/lifecycle/LifecycleOwner;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp9/a$b;->a:Landroidx/lifecycle/LifecycleOwner;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lp9/a$b;->a:Landroidx/lifecycle/LifecycleOwner;

    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lp9/a$b;->a:Landroidx/lifecycle/LifecycleOwner;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 3
    :cond_3
    iget-object v0, p0, Lp9/a$b;->b:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x1

    .line 4
    aput-boolean v2, v0, v1

    .line 5
    iget-boolean v0, p0, Lp9/a$b;->c:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lp9/a$b;->g:Lp9/a;

    invoke-static {v0}, Lp9/a;->a(Lp9/a;)Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lp9/a$b;->d:I

    if-ge v0, v1, :cond_6

    :cond_5
    iget-boolean v0, p0, Lp9/a$b;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lp9/a$b;->g:Lp9/a;

    invoke-static {v0}, Lp9/a;->a(Lp9/a;)Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v0

    iget v1, p0, Lp9/a$b;->d:I

    if-lt v0, v1, :cond_7

    .line 6
    :cond_6
    iget-object v0, p0, Lp9/a$b;->e:Lp9/a$f;

    if-eqz v0, :cond_b

    .line 7
    invoke-interface {v0}, Lp9/a$f;->onResponse()V

    goto :goto_1

    .line 8
    :cond_7
    iget-boolean v0, p0, Lp9/a$b;->f:Z

    if-eqz v0, :cond_8

    .line 9
    iget-object v0, p0, Lp9/a$b;->e:Lp9/a$f;

    if-eqz v0, :cond_b

    .line 10
    invoke-interface {v0}, Lp9/a$f;->onCustomRecharge()V

    goto :goto_1

    .line 11
    :cond_8
    iget-object v0, p0, Lp9/a$b;->a:Landroidx/lifecycle/LifecycleOwner;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_9

    .line 12
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 13
    :cond_9
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_a

    .line 14
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_a
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 16
    :goto_0
    iget-object v1, p0, Lp9/a$b;->g:Lp9/a;

    invoke-virtual {v1, v0}, Lp9/a;->w(Landroid/app/Activity;)V

    :cond_b
    :goto_1
    return-void
.end method
