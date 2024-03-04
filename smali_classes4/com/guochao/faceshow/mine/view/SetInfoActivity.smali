.class public Lcom/guochao/faceshow/mine/view/SetInfoActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

.field private F:Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

.field private G:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

.field H:Ljava/text/SimpleDateFormat;

.field private I:Lcom/guochao/faceshow/views/e;

.field private J:I

.field private K:Lcom/guochao/faceshow/bean/EmotionalTag;

.field L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/EmotionalTag;",
            ">;"
        }
    .end annotation
.end field

.field M:Ljava/lang/String;

.field N:Ljava/lang/String;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field animal:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/bean/EmotionalTag;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field constellation:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field editAddress:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field editLanguage:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

.field private g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field mAutograph:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAvatarIllegleTips:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBirthday:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCheckAvatarTips:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCity:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEmotionalState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFriendshipIntention:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGender:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mHeight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mHobby:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMainLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMasteryOfLanguage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mNickname:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mOccupation:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWeight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Ljava/util/Calendar;

.field private t:Ljava/lang/String;

.field tvAnimal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAnimalName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvConstellation:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvConstellationName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field viewAddress:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewAnimal:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewConstellation:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewLanguage:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->k:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->l:Z

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->n:Ljava/lang/String;

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p:I

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->q:I

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->r:Z

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t:Ljava/lang/String;

    const-string v0, "CM"

    .line 11
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->C:Ljava/lang/String;

    const-string v0, "Kg"

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->D:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->H:Ljava/text/SimpleDateFormat;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->J:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->L:Ljava/util/List;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->M:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->N:Ljava/lang/String;

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->J:I

    return p1
.end method

.method static synthetic B0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/bean/EmotionalTag;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->K:Lcom/guochao/faceshow/bean/EmotionalTag;

    return-object p0
.end method

.method private B1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->k:Z

    const v1, 0x7f120097

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getBirthdayUpdate()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Q1()V

    :cond_2
    :goto_0
    return-void
.end method

.method private D1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->l:Z

    const v1, 0x7f120097

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getSexUpdate()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->J1()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic E0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/bean/EmotionalTag;)Lcom/guochao/faceshow/bean/EmotionalTag;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->K:Lcom/guochao/faceshow/bean/EmotionalTag;

    return-object p1
.end method

.method static synthetic F0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->b2()V

    return-void
.end method

.method static synthetic G0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static G1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#6365FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x22

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic H0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method private H1(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setData(Ljava/util/List;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i1(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic I0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method private I1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 5
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-le v3, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 6
    :cond_5
    :goto_1
    invoke-static {v1, p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->X1(ZLcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "crop"

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->setCameraPath(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v0

    invoke-interface {v0}, Lb8/g;->isVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->setVipType(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$i0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$i0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->Z1(Lhb/b;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->Y1(Lhb/b;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Cover_Photo_Dialog_Fragment"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private J1()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const v0, 0x7f0d0478

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d0b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a09f3

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a098a

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const v4, 0x7f12003a

    .line 6
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a020d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    new-instance v4, Lcom/guochao/faceshow/mine/view/SetInfoActivity$b;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p:I

    if-nez v1, :cond_0

    const v1, 0x7f0a092d

    .line 10
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const v1, 0x7f0a092a

    .line 11
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 12
    :cond_1
    :goto_0
    iget v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p:I

    iput v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->q:I

    .line 13
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 14
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x131

    div-int/lit16 v2, v2, 0x177

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    return-void
.end method

.method private L1()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const v0, 0x7f0d0479

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d0b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0314

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/JudgeEditText;

    const v3, 0x7f0a09f3

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a098a

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v5

    const v6, 0x7f0a092d

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v5, 0x7f0a020d

    .line 9
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 10
    new-instance v7, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j;

    invoke-direct {v7, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v5, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;

    invoke-direct {v5, p0, v2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/views/JudgeEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v5, 0x7f1203ec

    .line 12
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHeight:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_1

    .line 16
    invoke-virtual {v2, v9, v8, v9}, Lcom/guochao/faceshow/views/JudgeEditText;->b(III)V

    .line 17
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a092a

    .line 18
    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    const/4 v10, 0x5

    .line 20
    invoke-virtual {v2, v9, v5, v10}, Lcom/guochao/faceshow/views/JudgeEditText;->b(III)V

    .line 21
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_0
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_3
    const v1, 0x7f120441

    .line 25
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 26
    :goto_1
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/views/JudgeEditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x131

    div-int/lit16 v2, v2, 0x177

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic N0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method private N1()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const v0, 0x7f0d047a

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d0b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a020d

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 5
    new-instance v3, Lcom/guochao/faceshow/mine/view/SetInfoActivity$r;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$r;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0314

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0a082d

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_0

    const-string v4, "0"

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "/18"

    invoke-static {v3, v4, v6}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0a09f3

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f120681

    .line 10
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$s;

    invoke-direct {v1, p0, v3, v4}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$s;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 17
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x131

    div-int/lit16 v2, v2, 0x177

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    return-void
.end method

.method private O1()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const v0, 0x7f0d047b

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d0b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0314

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0a082d

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a09f3

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f120445

    .line 7
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a020d

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 9
    new-instance v5, Lcom/guochao/faceshow/mine/view/SetInfoActivity$v;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$v;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, ""

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    :cond_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/200"

    invoke-static {v3, v1, v5}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$w;

    invoke-direct {v1, p0, v3}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$w;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$x;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$x;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x131

    div-int/lit16 v2, v2, 0x177

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic P0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->P1()V

    return-void
.end method

.method private P1()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const v0, 0x7f0d0476

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d0b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0b29

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    const v3, 0x7f0a09f3

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f12022a

    .line 6
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a020d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    new-instance v4, Lcom/guochao/faceshow/mine/view/SetInfoActivity$n;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$n;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;

    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->L:Ljava/util/List;

    invoke-direct {v1, p0, v4, v2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/util/List;Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;)V

    .line 10
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->setAdapter(Lcom/guochao/faceshow/views/flowlayout/a;)V

    .line 11
    iget v4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->J:I

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    .line 12
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/views/flowlayout/a;->h([I)V

    .line 13
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x131

    div-int/lit16 v2, v2, 0x177

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic Q0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    return-void
.end method

.method private Q1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->s:Ljava/util/Calendar;

    const/16 v1, 0x7cf

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->s:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->s:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 6
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->s:Ljava/util/Calendar;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->R1(Landroidx/fragment/app/FragmentActivity;Ljava/util/Calendar;Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    return-void
.end method

.method private R1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->f:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crop"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->f:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setCameraPath(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->f:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setUpdatePath(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->f:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->isVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setVipType(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->f:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->isVip()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setNoGif(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->f:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Photo_Dialog_Fragment"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic S0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Z1(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V

    return-void
.end method

.method private S1()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const v0, 0x7f0d047c

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d0b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0314

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0a09f3

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120aba

    .line 6
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a020d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    new-instance v4, Lcom/guochao/faceshow/mine/view/SetInfoActivity$g;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$g;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a098a

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 10
    new-instance v4, Lcom/guochao/faceshow/mine/view/SetInfoActivity$h;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$h;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mWeight:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Lb"

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0a092d

    .line 13
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    const v4, 0x7f0a092a

    .line 14
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    const-string v4, "Kg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v6, ""

    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    goto :goto_1

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    const-string v4, "K"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    const-string v4, "L"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    .line 24
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const v1, 0x7f120442

    .line 25
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 26
    :goto_2
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$i;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$i;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x131

    div-int/lit16 v2, v2, 0x177

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic T0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->H1(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V

    return-void
.end method

.method private T1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->USER_COVER_UPDATE_SORT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ids"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private V1(Landroid/app/Dialog;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mBirthday:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->k:Z

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setBirthdayStr(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "yyyy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 9
    :try_start_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/bean/UserBean;->setUserAge(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->U1()V

    :goto_0
    return-void
.end method

.method static synthetic W0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->T1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic X0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    return-object p0
.end method

.method private X1(Landroid/app/Dialog;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->q:I

    iget v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    iget v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setGender(I)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->q:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    const v2, 0x7f12056e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    const v2, 0x7f120af5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->l:Z

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->q:I

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->W1(I)V

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void
.end method

.method static synthetic Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    return-object p0
.end method

.method static synthetic Z0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->j:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    return-object p1
.end method

.method private Z1(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V
    .locals 3

    const-string/jumbo v0, "userHeadimg"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->d:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mNickname:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getSex()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p:I

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    const v1, 0x7f12056e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    const v1, 0x7f120af5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getBirthday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->n:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->o:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mBirthday:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAutograph:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1209bc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getNowAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->u:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->r1()V

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getCareer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->v:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mOccupation:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getStature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->w:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHeight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getWeight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mWeight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getEmotions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->y:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mEmotionalState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getMakeFriends()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->z:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mFriendshipIntention:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getLanguages()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMasteryOfLanguage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getHobby()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 37
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHobby:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHobby:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getCompany()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->A:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getIndustry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->B:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getConstellation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvConstellationName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getConstellation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_b
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getAnimal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvAnimalName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getAnimal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method static synthetic a1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    return-object p1
.end method

.method static synthetic b1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t:Ljava/lang/String;

    return-object p0
.end method

.method private b2()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateEmotionTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 2
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->K:Lcom/guochao/faceshow/bean/EmotionalTag;

    iget v1, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->tagId:I

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tagIds"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$q;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->R1()V

    return-void
.end method

.method static synthetic d1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->k1()V

    return-void
.end method

.method static synthetic g1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->r:Z

    return p0
.end method

.method static synthetic h1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->r:Z

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->showDialog()V

    return-void
.end method

.method private i1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAvatarIllegleTips:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAvatarIllegleTips:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAvatarIllegleTips:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->q:I

    return p1
.end method

.method private k1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I:Lcom/guochao/faceshow/views/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I:Lcom/guochao/faceshow/views/e;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I:Lcom/guochao/faceshow/views/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->g()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I:Lcom/guochao/faceshow/views/e;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->h(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I:Lcom/guochao/faceshow/views/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p:I

    return p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->V1(Landroid/app/Dialog;)V

    return-void
.end method

.method private m1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " "

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->USER_COVER_DELETE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgId:I

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imgId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k0;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic n0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->X1(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic o0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private r1()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getCountryData(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;)V

    return-void
.end method

.method static synthetic s0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->C:Ljava/lang/String;

    return-object p0
.end method

.method private showDialog()V
    .locals 4

    const v0, 0x7f1201e8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$f;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lcom/guochao/faceshow/views/h;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/guochao/faceshow/views/e$a;)V

    return-void
.end method

.method static synthetic t0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->C:Ljava/lang/String;

    return-object p1
.end method

.method public static t1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v0, "MM/dd/yyyy"

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    const-string v1, "EST5EDT"

    .line 4
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method static synthetic u0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    return-void
.end method

.method static synthetic v0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->w:Ljava/lang/String;

    return-object p0
.end method

.method private x1()V
    .locals 2

    const v0, 0x7f0a088a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setOnItemClickListener(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$t;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$t;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setOnSortUpdateSortListener(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setData(Ljava/util/List;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->w:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public F1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x3

    .line 1
    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    const/4 v2, 0x2

    const-string v3, "flag"

    const-string v4, "imgFile"

    const-string v5, ""

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;-><init>()V

    const/4 v1, -0x2

    .line 3
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    .line 4
    iput-object p2, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localUri:Landroid/net/Uri;

    .line 6
    iput-object p2, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->smallImg:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 8
    sget-object v1, Lf7/b;->j0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 11
    sget-object v0, Lf7/b;->j0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_0
    return-void
.end method

.method public U1()V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateBirthday:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 3
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m:Ljava/lang/String;

    const-string v2, "birthday"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public W1(I)V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->updateSex:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sex"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$h0;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$h0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;I)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public Y1()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateStature:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stature"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$g0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$g0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public a2()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f12016d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateSignature:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e:Ljava/lang/String;

    const-string v2, "signature"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo v1, "userId"

    .line 6
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$z;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$z;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public c2()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateNickName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 2
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c:Ljava/lang/String;

    const-string v2, "nickName"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public d2()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateWeight:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "weight"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$f0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$f0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public getEvent(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0214

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->S1()V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->v:Ljava/lang/String;

    const-string v1, "career"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->B:Ljava/lang/String;

    const-string v1, "infoName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->A:Ljava/lang/String;

    const-string v1, "companyName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x38

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->N1()V

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t:Ljava/lang/String;

    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$n0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$n0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/LanguageActivity;->R1(Ljava/lang/String;Lcom/guochao/faceshow/activity/LanguageActivity$e;)Lcom/guochao/faceshow/activity/LanguageActivity;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->L1()V

    goto :goto_0

    .line 13
    :pswitch_6
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->D1()V

    goto :goto_0

    .line 14
    :pswitch_7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "friendShip"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->q1()V

    goto :goto_0

    .line 17
    :pswitch_9
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->B1()V

    goto :goto_0

    .line 18
    :pswitch_a
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->O1()V

    goto :goto_0

    .line 19
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->u:Ljava/lang/String;

    const-string v1, "nowAddress"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x36

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCheckAvatarTips:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_SHOW_AVATAR_TIPS"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0300
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00af

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SHOW_AVATAR_TIPS"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCheckAvatarTips:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCheckAvatarTips:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editAddress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editLanguage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAddress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewLanguage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->constellation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->animal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewConstellation:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAnimal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvConstellation:Landroid/widget/TextView;

    const v1, 0x7f120b0a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvAnimal:Landroid/widget/TextView;

    const v1, 0x7f120b09

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editAddress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editLanguage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAddress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewLanguage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->constellation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->animal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewConstellation:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAnimal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public o1()V
    .locals 2

    const-string/jumbo v0, "tokens/user/info/findEditorDataByLang"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    const/4 v1, -0x1

    const-string v2, "."

    const-string v3, ".jpg"

    const-string v4, "/"

    const-string v5, "crop"

    if-ne p2, v1, :cond_9

    const/16 v6, 0x33

    if-eq p1, v6, :cond_8

    const/16 v6, 0x34

    if-eq p1, v6, :cond_4

    const/16 v6, 0x45

    if-eq p1, v6, :cond_3

    const/16 v6, 0x79

    if-eq p1, v6, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_d

    const-string v6, "path"

    .line 2
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {p0, v7, v6}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->F1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    if-nez v6, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {p0, v7, v6}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->F1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_3
    invoke-static {p3}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v6

    .line 7
    invoke-static {p0, v6}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 8
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->F1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/guochao/faceshow/utils/AAImageUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 10
    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    .line 13
    :cond_5
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    .line 15
    :cond_6
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    if-eqz v7, :cond_7

    .line 16
    iget-object v8, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->setUpdatePath(Ljava/lang/String;)V

    .line 17
    :cond_7
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v6, v7, v8, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 18
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    .line 19
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->getmCameraUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v7, v6, v8, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0

    :cond_9
    const/16 v6, 0x35

    if-ne p2, v6, :cond_a

    goto :goto_0

    :cond_a
    const/16 v6, 0x36

    if-ne p2, v6, :cond_b

    const-string v6, "currentCountry"

    .line 20
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/bean/CountryData;

    .line 21
    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->u:Ljava/lang/String;

    .line 22
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_b
    const/16 v6, 0x38

    if-ne p2, v6, :cond_c

    const-string v6, "career"

    .line 23
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->v:Ljava/lang/String;

    const-string v6, "infoName"

    .line 24
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->B:Ljava/lang/String;

    const-string v6, "companyName"

    .line 25
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->A:Ljava/lang/String;

    .line 26
    iget-object v6, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mOccupation:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_c
    const/16 v6, 0x37

    if-ne p2, v6, :cond_d

    const-string v6, "hobbies"

    .line 27
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    iget-object v7, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHobby:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_0
    const/16 v6, 0x2727

    if-ne p1, v6, :cond_13

    if-ne p2, v1, :cond_13

    if-eqz p3, :cond_13

    .line 29
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 30
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "intent_extra_key_qr_scan"

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "uri"

    .line 32
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    const-string v1, "gif"

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 35
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_f

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    goto :goto_1

    .line 38
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    .line 39
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    invoke-static {p0, p2, p1, p3, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_3

    .line 40
    :cond_10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->isVip()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 41
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const/16 v1, 0x12c

    invoke-static {p1, p2, p3, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->d0(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)V

    goto :goto_3

    .line 42
    :cond_11
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_12

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    goto :goto_2

    .line 45
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    .line 46
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h:Ljava/lang/String;

    invoke-static {p0, p2, p1, p3, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_13
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "data"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    const-string v0, "camera_path"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i:Ljava/lang/String;

    const-string/jumbo v0, "uri"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    new-instance p1, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->F:Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

    const p1, 0x7f12066b

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->s:Ljava/util/Calendar;

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x1()V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->o1()V

    .line 10
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const/4 p1, 0x3

    .line 11
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->checkShouldShow(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getInstance(I)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFriendshipEvent(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$UpdateFriendshipEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->o1()V

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
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->F:Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;

    invoke-virtual {p2, p1, p3}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->doNext(I[I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i:Ljava/lang/String;

    const-string v1, "camera_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTagChangedEvent(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$UpdateUserHobbyTagEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->o1()V

    return-void
.end method

.method public q1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->findemotionByUserId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$b0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$b0;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
