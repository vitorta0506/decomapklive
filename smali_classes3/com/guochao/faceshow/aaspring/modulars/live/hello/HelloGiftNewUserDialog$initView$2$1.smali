.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1",
        "Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;",
        "onH5BlackSummonListener",
        "",
        "onH5RulesClickListener",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $helloStarH5RulesFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;

.field final synthetic $helloSummonFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->$helloSummonFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->$helloStarH5RulesFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onH5BlackSummonListener()V
    .locals 0

    return-void
.end method

.method public onH5RulesClickListener()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getMClass()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->$helloSummonFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getMClass()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a025c

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->$helloStarH5RulesFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getMClass()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->$helloStarH5RulesFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getMFragments()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getMClass()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getMFragments()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getMClass()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mClass[1].name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$initView$2$1;->$helloStarH5RulesFragment:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
