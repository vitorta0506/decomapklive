.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Laa/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;
    }
.end annotation


# static fields
.field static final n:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

.field genderSelector:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private h:Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;

.field private i:I

.field ivImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected j:Landroid/os/Handler;

.field k:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field private l:Lcom/opensource/svgaplayer/SVGAParser;

.field private m:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

.field merge:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field svImage:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->f:Ljava/util/List;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->j:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->k:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    return p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->q0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->o0()V

    return-void
.end method

.method private o0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_1
    return-void
.end method

.method private p0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KEY_DATING_SQUARE_FIRST"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "module_notification"

    invoke-static {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->l:Lcom/opensource/svgaplayer/SVGAParser;

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->l:Lcom/opensource/svgaplayer/SVGAParser;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->k:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    const/4 v3, 0x1

    const-string v4, "opening_date"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private q0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;-><init>()V

    const-string v1, "-1"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;->setKey(Ljava/lang/String;)V

    const v1, 0x7f120772

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;->setLanguage(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private refreshGenderIcon(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->genderSelector:Landroid/widget/ImageView;

    const v0, 0x7f0f02df

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->genderSelector:Landroid/widget/ImageView;

    const v0, 0x7f0f02e0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->genderSelector:Landroid/widget/ImageView;

    const v0, 0x7f0f02e1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private u0(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f12069f

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->n:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method


# virtual methods
.method public P(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquare;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->genderSelector:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0042

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f1209c6

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "DatingSquareLanguage"

    .line 4
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->d:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->q0(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->V1(ILjava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_data_square_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "module_notification"

    invoke-static {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->o0()V

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->refreshGenderIcon(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public loadData()V
    .locals 3

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "en"

    :goto_0
    const-string v1, "in"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "id"

    :cond_1
    const-string v1, "tokens/appoint/findLanguageByTrans"

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v1

    const-string v2, "phone_lang"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public m0()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    return v0
.end method

.method public n0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->h:Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->merge:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->p0()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0466

    const/4 v1, 0x3

    const-string v2, "module_notification"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v0, :cond_6

    const v0, 0x7f0a05b0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0af2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->u0(I)V

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KEY_DATING_SQUARE_TITLE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0, v5}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result p1

    if-ne p1, v5, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/WaitVideoCoverCheckActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result p1

    if-eq p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0, v5}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "fromType"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010027

    const v0, 0x7f010025

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    .line 11
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->u0(I)V

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result p1

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    if-ne v0, v3, :cond_8

    if-nez p1, :cond_7

    .line 14
    iput v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    goto :goto_1

    .line 15
    :cond_7
    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    goto :goto_1

    :cond_8
    if-ne v0, p1, :cond_9

    .line 16
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    goto :goto_1

    :cond_9
    if-nez v0, :cond_a

    .line 17
    iput v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    goto :goto_1

    .line 18
    :cond_a
    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    .line 19
    :goto_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b:I

    rem-int/2addr p1, v1

    .line 20
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->refreshGenderIcon(I)V

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_data_square_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

    if-eqz v0, :cond_b

    .line 23
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;->e:Landroidx/fragment/app/Fragment;

    .line 24
    instance-of v1, v0, Laa/g;

    if-eqz v1, :cond_b

    .line 25
    check-cast v0, Laa/g;

    invoke-interface {v0, p1}, Laa/g;->onGenderChanged(I)V

    .line 26
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->genderSelector:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_c
    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KEY_DATING_SQUARE_TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module_notification"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i:I

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->s0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->n0()V

    :goto_0
    return-void
.end method

.method public r0()V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DateNoticeFriendFragment"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->h:Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->h:Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800035

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->merge:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->h:Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    :goto_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->h:Lcom/guochao/faceshow/aaspring/views/DatingSquarePopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public t0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->a:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    add-int/2addr v1, v0

    const/high16 v2, 0x429a0000    # 77.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i:I

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->m:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->P1(Landroidx/fragment/app/FragmentManager;II)Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->m:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    :cond_0
    return-void
.end method
