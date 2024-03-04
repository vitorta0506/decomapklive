.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->c2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;I)V

    .line 4
    iget-boolean v0, p1, Lte/a;->b:Z

    const/4 v1, 0x0

    const-string v2, "location_never_ask"

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->mView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean p1, p1, Lte/a;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 9
    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    .line 10
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->a:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    const/16 v0, 0x12c

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->gotoSettingForResult(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
