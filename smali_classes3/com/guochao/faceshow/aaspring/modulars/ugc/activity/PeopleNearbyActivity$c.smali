.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;Landroid/view/View;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->l:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->l:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->l:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->h()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->obtainFromImUser(Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->bindData(Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;)V

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->c:[Landroid/view/View;

    .line 6
    invoke-virtual {v1, p3, p2, p4, p1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->startZoom(Ljava/util/List;Landroid/view/View;I[Landroid/view/View;)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$c;)V

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->setOnFocusListener(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;)V

    return-void
.end method
