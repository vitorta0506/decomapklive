.class public final Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;->saveCurrentPriceSetting(ILcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
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
.field final synthetic $callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $model:Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

.field final synthetic $type:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;ILkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->$type:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->$callBack:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->$model:Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->$callBack:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "baseResponse"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;->access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    if-eqz p1, :cond_3

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->$type:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getAudioPriceRules()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getVideoPriceRules()Ljava/util/List;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->$model:Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getRuleId()I

    move-result v3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getRuleId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 7
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->setChecked(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->setChecked(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;->access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;->$callBack:Lkotlin/jvm/functions/Function1;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
