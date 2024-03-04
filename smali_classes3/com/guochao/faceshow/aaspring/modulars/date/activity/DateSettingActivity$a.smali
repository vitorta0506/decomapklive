.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvVideoPrice:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getCurrentVideoPrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s/min"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvVoicePrice:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getCurrentAudioPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getAppointSetting()Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;->a(Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;)V

    return-void
.end method
