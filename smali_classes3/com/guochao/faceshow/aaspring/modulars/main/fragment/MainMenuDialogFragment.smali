.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$e;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->b:[Ljava/lang/String;

    .line 2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    :goto_0
    sput-object v4, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private static P1(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Q1(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 7
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, ""

    move-object v2, v0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->P1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12079c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_1

    if-nez v1, :cond_1

    const v1, 0x7f12018d

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->S1(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 6
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ", "

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->P1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v3, v5

    .line 9
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12079d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_3

    if-nez v1, :cond_3

    const v1, 0x7f12018e

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->S1(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 11
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->P1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    goto :goto_2

    :cond_4
    move-object v3, v5

    .line 14
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12079f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_5

    if-nez v1, :cond_5

    const v1, 0x7f120068

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->S1(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 16
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->P1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v5, v0

    .line 19
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12079e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_7

    if-nez v1, :cond_7

    const v3, 0x7f1206fa

    .line 20
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->S1(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 21
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public static S1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$d;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f1208a3

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    const v1, 0x7f1206d9

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method public static T1(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const v0, 0x7f12069f

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    :cond_1
    const-string v0, "CLICK_LIVE"

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method


# virtual methods
.method public R1(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x1020002

    const/4 v1, 0x1

    const-string v2, "main_menu"

    invoke-static {p1, v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragmentAsDialog(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;ZLjava/lang/String;)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d040a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$e;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$e;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$e;

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f12069f

    packed-switch p1, :pswitch_data_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->push_close:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "CLICK_PUSH_VIDEO"

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 7
    :cond_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "CLICK_PUSH_FRIENDRING"

    .line 9
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->push_ugc_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->start(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "CLICK_LIVE"

    .line 14
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 17
    :cond_3
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a04e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
