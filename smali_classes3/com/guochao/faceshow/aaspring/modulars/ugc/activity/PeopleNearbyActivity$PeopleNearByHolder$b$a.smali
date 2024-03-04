.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly7/e;->e(Ljava/lang/String;)V

    return-void
.end method
