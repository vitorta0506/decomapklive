.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3",
        "Lcom/guochao/faceshow/aaspring/views/v$d;",
        "Landroid/view/View;",
        "view",
        "",
        "onFirstIconClick",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlantSex()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget v1, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setPlantSex(I)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlantSex()I

    move-result p1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    iget v3, v3, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    if-ne p1, v3, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setPlantSex(I)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlantSex()I

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setPlantSex(I)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlantSex()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setPlantSex(I)V

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlantSex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->access$refreshGenderIcon(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;I)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "planet_gender_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_planet_sex_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlantSex()I

    move-result v1

    const-string v2, "module_notification"

    invoke-static {p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->access$getPlanetData(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    return-void
.end method
