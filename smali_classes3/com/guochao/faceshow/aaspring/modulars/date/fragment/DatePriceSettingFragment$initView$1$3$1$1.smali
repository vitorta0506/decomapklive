.class final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->initView$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
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
.field final synthetic $this_apply:Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;->$this_apply:Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;->$this_apply:Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->setChecked(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    const v0, 0x7f1207b8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->access$setSaving$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Z)V

    return-void
.end method
