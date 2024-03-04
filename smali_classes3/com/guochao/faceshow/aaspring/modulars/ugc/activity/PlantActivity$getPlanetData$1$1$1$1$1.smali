.class final Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanetData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "parent",
        "Landroid/view/ViewGroup;",
        "kotlin.jvm.PlatformType",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "onItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;->$it2:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;->$it2:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;->$it2:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getNickName()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x63

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->plant_avatar_click:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method
