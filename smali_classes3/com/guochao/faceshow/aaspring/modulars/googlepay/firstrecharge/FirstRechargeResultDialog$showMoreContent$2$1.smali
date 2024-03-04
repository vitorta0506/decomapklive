.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->showMoreContent(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "position",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1;->$datas:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1;->$it:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1;->$datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1;->$it:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :cond_0
    return v1
.end method
