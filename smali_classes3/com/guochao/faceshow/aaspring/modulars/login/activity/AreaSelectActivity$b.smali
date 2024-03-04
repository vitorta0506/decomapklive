.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method
