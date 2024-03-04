.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;)V

    const-wide/16 v1, 0x1e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;->a(Ljava/lang/String;)V

    return-void
.end method
