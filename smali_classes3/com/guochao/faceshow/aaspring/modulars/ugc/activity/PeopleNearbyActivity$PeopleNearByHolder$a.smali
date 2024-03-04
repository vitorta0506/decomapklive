.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$c;->a(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;Landroid/view/View;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
