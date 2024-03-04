.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field b:Ljava/util/Calendar;

.field private c:I

.field private d:I

.field private e:I

.field f:Ljava/text/SimpleDateFormat;

.field mBoy:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGirl:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->i0()V

    return-void
.end method

.method private e0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "birthday"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x7cf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-virtual {v0, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->k(III)V

    goto :goto_1

    :cond_0
    const-string v1, "-"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->c:I

    .line 6
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->d:I

    const/4 v1, 0x2

    .line 7
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->c:I

    .line 9
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->d:I

    .line 10
    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->e:I

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->c:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->d:I

    sub-int/2addr v2, v4

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->k(III)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->setOnDateChangedListener(Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;)V

    return-void
.end method

.method private g0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mGirl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->a:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mBoy:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mGirl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->a:I

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mBoy:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mGirl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method private i0()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v0

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private showDialog()V
    .locals 4

    const v0, 0x7f1201e8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lcom/guochao/faceshow/views/h;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/guochao/faceshow/views/e$a;)V

    return-void
.end method


# virtual methods
.method public confirmJumpMainAcitivity(Landroid/view/View;)V
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/CalenderUtils;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p1

    .line 5
    div-int/lit16 p1, p1, 0x16d

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    const/16 v0, 0x12

    if-lt p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->f:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->k0(ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->showDialog()V

    :goto_0
    return-void
.end method

.method public d0()V
    .locals 3

    const v0, 0x7f0a0801

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0055

    return v0
.end method

.method public initGender(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0166

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a048e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mBoy:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mGirl:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->a:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mBoy:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->mGirl:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->a:I

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->d0()V

    return-void
.end method

.method public initView()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->g0()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->e0()V

    return-void
.end method

.method public k0(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sex"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "birthday"

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V

    const-string v1, "tokens/user/info/setUserSexAndBirthday"

    invoke-interface {p1, p0, v1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
