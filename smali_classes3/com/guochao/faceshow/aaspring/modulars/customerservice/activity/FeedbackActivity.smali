.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

.field b:Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

.field mEditTextEmail:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->d0(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private d0(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "tokens/sysHelp/submitFeedBackQuestion"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->b:Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;->getTypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typeId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->mEditTextEmail:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deviceLevel"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "platformVersion"

    const-string v2, "2.8.28"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getNetType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netType"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netProvider"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "detail"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "fileList"

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "logFile"

    .line 11
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;)V

    .line 12
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d004d

    return v0
.end method

.method public initView()V
    .locals 5

    const v0, 0x7f12081c

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->b:Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    const v1, 0x7f0a095d

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    const v0, 0x7f0f01ec

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->mEditTextEmail:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/LengthFilter;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public submit(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->h()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->hasWord(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f12030d

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    :cond_0
    const-string p1, ""

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->l(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$q;)V

    return-void
.end method
