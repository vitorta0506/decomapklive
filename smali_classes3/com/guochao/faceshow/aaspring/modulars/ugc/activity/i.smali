.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/i;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/i;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/i;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/i;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method
