.class public Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

.field private e:Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

.field private f:Z

.field private g:Z

.field private h:Lhb/b;

.field private i:Lhb/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->f:Z

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->d:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lhb/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->h:Lhb/b;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->a2()V

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lhb/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->i:Lhb/b;

    return-object p0
.end method

.method public static X1(ZLcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "delete"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "data"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a2()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1201dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;-><init>(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)V

    const v4, 0x7f1304b9

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f1208a3

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    const v1, 0x7f12069a

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method public Y1(Lhb/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->i:Lhb/b;

    return-void
.end method

.method public Z1(Lhb/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->h:Lhb/b;

    return-void
.end method

.method public loadData(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->loadData(I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f120444

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->f:Z

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f1201f8

    .line 11
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->d:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f1201da

    .line 17
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->setDatas(Ljava/util/List;)V

    .line 21
    new-instance p1, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;-><init>(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->setOnMenuItemClickListener(Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->e:Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "delete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->f:Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->d:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->e:Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

    invoke-virtual {p2, p1, p3}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->doNext(I[I)V

    return-void
.end method

.method public setCameraPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public setUpdatePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public setVipType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->g:Z

    return-void
.end method
