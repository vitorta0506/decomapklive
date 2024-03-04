.class public Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a07cb

    const-string v2, "field \'mvpIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0d97

    const-string v2, "field \'userGenderLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0d95

    const-string v2, "field \'userGender\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGender:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d84

    const-string v2, "field \'userAge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userAge:Landroid/widget/TextView;

    const v0, 0x7f0a0dbe

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Lcom/guochao/faceshow/aaspring/views/LevelView;

    const-string v3, "field \'userLevel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LevelView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;

    if-eqz v1, :cond_0

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0e14

    .line 11
    const-class v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const-string v2, "field \'vipLay\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->vipLay:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGender:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userAge:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->vipLay:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel_ViewBinding;->c:Landroid/view/View;

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
