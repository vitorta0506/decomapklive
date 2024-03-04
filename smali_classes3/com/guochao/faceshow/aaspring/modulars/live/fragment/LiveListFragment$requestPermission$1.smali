.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestPermission(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1",
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;",
        "Lte/a;",
        "permission",
        "",
        "onNext",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $click:Z

.field final synthetic $pageNo:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->$pageNo:I

    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->$click:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 3
    .param p1    # Lte/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->$pageNo:I

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->$click:Z

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestLocation(IZ)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;->$click:Z

    .line 4
    iget-boolean v2, p1, Lte/a;->b:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMNoPermissionView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean p1, p1, Lte/a;->c:Z

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->gotoSetting(Landroid/content/Context;)V

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "location_live_refuse_for_ever"

    invoke-static {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMNoPermissionView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "location_live_refuse"

    invoke-static {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
