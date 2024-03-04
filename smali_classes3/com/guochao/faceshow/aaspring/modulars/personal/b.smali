.class public Lcom/guochao/faceshow/aaspring/modulars/personal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static c(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 0

    return-void
.end method

.method public static d(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static f(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Ljava/util/List;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Lcom/guochao/faceshow/aaspring/views/m;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/n;

    invoke-direct {v0, p0, p1, p3}, Lcom/guochao/faceshow/aaspring/views/n;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/aaspring/views/m;)V

    const/high16 p0, 0x41800000    # 16.0f

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    neg-int p0, p0

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {v0, p2, p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static g(IILandroidx/fragment/app/FragmentManager;)V
    .locals 0

    return-void
.end method

.method public static h(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static j(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
            ">(TT;)V"
        }
    .end annotation

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    return-void
.end method
