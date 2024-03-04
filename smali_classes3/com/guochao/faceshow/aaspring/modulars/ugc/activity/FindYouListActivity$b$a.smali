.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;->a(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;Landroid/view/View;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocus()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->h()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->i(Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)V

    return-void
.end method
