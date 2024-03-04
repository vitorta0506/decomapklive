.class public Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d045a

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a087f

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v0, 0x7f0a087e

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;->a:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->c()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setTypeText(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoPersonalDataView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v1, 0x7f0f0619

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setTypeIcon(I)V

    return-void
.end method
