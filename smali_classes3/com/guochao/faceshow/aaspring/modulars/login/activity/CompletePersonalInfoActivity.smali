.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Calendar;

.field private e:Z

.field etInviteCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

.field private g:I

.field h:Lk7/a;

.field i:Z

.field j:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

.field k:Landroid/os/Handler;

.field l:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

.field m:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

.field mBoy:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGirl:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:Lcom/guochao/faceshow/aaspring/utils/AfterTextChanged;

.field next:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field o:Ljava/text/SimpleDateFormat;

.field private p:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field select_birthday:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->a:Ljava/util/List;

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    .line 5
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/4 v2, 0x7

    const-string v3, "fb"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/16 v3, 0xa

    const-string v4, "ins"

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/16 v4, 0x9

    const-string v5, "Google"

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/16 v6, 0xb

    const-string v7, "line"

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/4 v7, 0x3

    const-string v8, "\u624b\u673a\u53f7"

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/4 v8, 0x2

    const-string v9, "\u90ae\u7bb1"

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/16 v9, 0xc

    const-string v10, "VK"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/4 v10, 0x4

    const-string v11, "\u5fae\u4fe1"

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/4 v11, 0x6

    const-string v12, "\u5fae\u535a"

    invoke-virtual {v1, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/4 v12, 0x5

    const-string v13, "QQ"

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    const/16 v14, 0x8

    const-string v15, "Twitter"

    invoke-virtual {v1, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v8, "Facebook"

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v2, "Instagram"

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v2, "Line"

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v2, "VKontakte"

    invoke-virtual {v1, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v2, "Wechat"

    invoke-virtual {v1, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v2, "SinaWeibo"

    invoke-virtual {v1, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v2, "mobile"

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    const-string v2, "email"

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e:Z

    .line 28
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->i:Z

    .line 29
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->j:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->k:Landroid/os/Handler;

    .line 31
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$c;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->n:Lcom/guochao/faceshow/aaspring/utils/AfterTextChanged;

    const-string v1, "yyyy-MM-dd"

    .line 32
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getDefaultFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->o:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->n0()V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->showDialog()V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private hideKeyboard(Landroid/os/IBinder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    return-object p0
.end method

.method private isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "user/reg"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v3

    const-string v4, "pwd"

    const/4 v5, 0x2

    const-string v6, "usernum"

    if-eq v3, v5, :cond_3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 9
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "recaptchaToken"

    .line 10
    invoke-virtual {v1, v3, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-eqz p5, :cond_1

    const-string p4, "beFrom"

    const-string p5, "webs"

    .line 11
    invoke-virtual {v1, p4, p5}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->f()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->f()Ljava/lang/String;

    move-result-object p4

    const-string p5, "email"

    invoke-virtual {v1, p5, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->j()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v6, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 15
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->l()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v4, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->f()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v6, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 17
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->l()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v4, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_4
    :goto_0
    const-string p4, "nickName"

    .line 18
    invoke-virtual {v1, p4, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->c()Ljava/lang/String;

    move-result-object p4

    const-string p5, "birthday"

    invoke-virtual {v1, p5, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string p4, "img"

    .line 20
    invoke-virtual {v1, p4, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string p5, "smallImg"

    if-nez p4, :cond_5

    .line 22
    invoke-virtual {v1, p5, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v1, p5, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 24
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "recommendUser"

    if-nez p3, :cond_7

    const-string p3, "new-game-facecast-"

    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "-"

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 28
    array-length p5, p3

    const/4 v3, 0x5

    if-ne p5, v3, :cond_7

    .line 29
    array-length p5, p3

    add-int/lit8 p5, p5, -0x1

    aget-object p3, p3, p5

    const-string p5, "gameCode"

    invoke-virtual {v1, p5, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const/4 p3, 0x0

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p5

    sub-int/2addr p5, v5

    invoke-virtual {p2, p3, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p4, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v1, p4, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 32
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->g()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sex"

    invoke-virtual {v1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 33
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->n()Ljava/lang/String;

    move-result-object p2

    const-string p3, "unionid"

    invoke-virtual {v1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 34
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, ""

    if-nez p2, :cond_8

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p5, 0x6

    if-ne p2, p5, :cond_8

    const-string p2, "beInviteCode"

    .line 35
    invoke-virtual {v1, p2, p6}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 36
    invoke-virtual {v1, p4, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 37
    :cond_8
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->k:Landroid/os/Handler;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->j:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 p4, 0x3a98

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;

    invoke-direct {p2, p0, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;I)V

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private m0()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, 0x7cf

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->R1(Landroidx/fragment/app/FragmentActivity;Ljava/util/Calendar;Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    return-void
.end method

.method private n0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->select_birthday:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mBoy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mGirl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->next:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->next:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private showDialog()V
    .locals 4

    const v0, 0x7f1201e8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lcom/guochao/faceshow/views/h;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/guochao/faceshow/views/e$a;)V

    return-void
.end method


# virtual methods
.method public confirm(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g:I

    if-gez p1, :cond_1

    const p1, 0x7f120196

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f120031

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const p1, 0x7f1205a1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    if-nez v0, :cond_4

    const p1, 0x7f120030

    .line 11
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 12
    :cond_4
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->select_hoby_page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/CalenderUtils;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 15
    div-int/lit16 v0, v0, 0x16d

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->o:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->r(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g:I

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->u(I)V

    .line 20
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    .line 21
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->etInviteCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->l0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->l:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$e;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V

    goto :goto_0

    .line 24
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->showDialog()V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->hideKeyboard(Landroid/os/IBinder;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d003c

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->e(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->complete_profile_page:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mGirl:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://vk.com/images/camera_400.png?ava=1"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 12
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e:Z

    .line 13
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->k()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->g()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 18
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g:I

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mBoy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mGirl:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 21
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g:I

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mBoy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mGirl:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g:I

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mBoy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mGirl:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    const v0, 0x7f12006b

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->next:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v0, "api/makefriendmutli/list/V2"

    .line 30
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->n:Lcom/guochao/faceshow/aaspring/utils/AfterTextChanged;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->select_birthday:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->n:Lcom/guochao/faceshow/aaspring/utils/AfterTextChanged;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public l0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->h:Lk7/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lk7/a;->a()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v0, Lf7/b;->j0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->h:Lk7/a;

    invoke-virtual {v1}, Lk7/a;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "imgFile"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "flag"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    invoke-virtual {v0, v7}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    const-string v5, ""

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x33

    if-eq p1, v1, :cond_4

    const/16 v1, 0x34

    if-eq p1, v1, :cond_2

    const/16 v1, 0x45

    const-string v2, "imgFile"

    const/4 v3, 0x1

    const/high16 v4, 0x42b40000    # 90.0f

    if-eq p1, v1, :cond_1

    const/16 v1, 0x79

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    invoke-static {v1, v5}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e:Z

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v1, Lk7/a;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lk7/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->h:Lk7/a;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p3}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 11
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-static {v5, v1}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 12
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e:Z

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 14
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    new-instance v3, Lk7/a;

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lk7/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->h:Lk7/a;

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/AAImageUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v1, v2, v3, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->getmCameraUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v1, v2, v3, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_5
    :goto_0
    const/16 v1, 0x2727

    if-ne p1, v1, :cond_6

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    .line 21
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "intent_extra_key_qr_scan"

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "uri"

    .line 23
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 24
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    invoke-static {p0, p2, p3, p1, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_6
    return-void
.end method

.method public onBindWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->m:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getJSAction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setOnCallBack(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->x(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->q(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->u(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->l:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->b(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V

    return-void
.end method

.method public onLoadErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/f;->a(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->etInviteCode:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "facecast-"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->etInviteCode:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->etInviteCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->etInviteCode:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->etInviteCode:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f06008d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public selectGender(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0166

    const v1, 0x7f08034c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a048e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0a4d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->m0()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mBoy:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mGirl:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g:I

    .line 6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e:Z

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->n0()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mBoy:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mGirl:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g:I

    .line 12
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e:Z

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->n0()V

    :goto_0
    return-void
.end method

.method public selectHeaderImg(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-direct {p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->p:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->W1(Z)V

    .line 4
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_camera.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->r:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->p:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->setCameraPath(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->p:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->setUpdatePath(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->p:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Photo_Dialog_Fragment"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
