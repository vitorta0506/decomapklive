.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->onViewClicked(Landroid/view/View;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p1, Lte/a;->b:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->v0(Landroid/app/Activity;Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;I)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    iget-boolean p1, p1, Lte/a;->c:Z

    if-nez p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->showFocusDialog(Landroidx/fragment/app/FragmentActivity;Lka/a$d;)V

    :goto_1
    return-void
.end method
