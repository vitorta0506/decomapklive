.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object v0
.end method
