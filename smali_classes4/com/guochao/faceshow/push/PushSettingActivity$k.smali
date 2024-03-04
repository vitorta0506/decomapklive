.class Lcom/guochao/faceshow/push/PushSettingActivity$k;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/push/PushSettingActivity;->k0(Landroid/widget/ImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/push/PushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->c:Lcom/guochao/faceshow/push/PushSettingActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/push/PushSettingActivity$k;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->b:Ljava/lang/String;

    const-string p2, "is_anchor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->c:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->liveOpenPushSetting:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->c:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->liveOpenPushSetting:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->c:Lcom/guochao/faceshow/push/PushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity$k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
