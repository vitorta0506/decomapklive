.class Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->b0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)Lcom/guochao/faceshow/bean/CountryData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    const v0, 0x7f120193

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->e0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->b0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)Lcom/guochao/faceshow/bean/CountryData;

    move-result-object v0

    const-string v1, "currentCountry"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    const/16 v1, 0x36

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->p0()V

    :goto_0
    return-void
.end method
