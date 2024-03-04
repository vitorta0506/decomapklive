.class public Lcom/guochao/faceshow/mine/view/SettingActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field debugWindow:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCheckVersionText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pipFL:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pipTV:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field testGoogleSign:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAccountSafeEmail:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b0()V
    .locals 8

    const-string v0, "phone"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "email"

    .line 2
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "payPassword"

    .line 3
    invoke-static {p0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "1"

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v4, "userPwd"

    .line 4
    invoke-static {p0, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p0, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity;->tvAccountSafeEmail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity;->tvAccountSafeEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public getEvent(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->goTermOfUse(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    const-class p1, Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 4
    :sswitch_2
    const-class p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 5
    :sswitch_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->goPrivacy(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 6
    :sswitch_4
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 7
    :sswitch_5
    const-class p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 8
    :sswitch_6
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 9
    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10
    :sswitch_8
    const-class p1, Lcom/guochao/faceshow/push/PushSettingActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 11
    :sswitch_9
    const-class p1, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 12
    :sswitch_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->showError()V

    goto/16 :goto_0

    .line 13
    :sswitch_b
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "api/sys/tokenLogin"

    invoke-direct {p1, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)V

    const-string/jumbo v0, "userToken"

    .line 14
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/mine/view/SettingActivity$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_0

    :sswitch_c
    const p1, 0x7f120003

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity$g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$g;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    :sswitch_d
    const-string p1, ""

    .line 17
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 18
    new-instance p1, Lcom/guochao/faceshow/mine/view/SettingActivity$f;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$f;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DataCleanManager;->clearAllCache(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V

    goto :goto_0

    :sswitch_e
    const p1, 0x814d

    .line 19
    invoke-static {p0, p1}, Lcn/jpush/android/api/JPushInterface;->deleteAlias(Landroid/content/Context;I)V

    .line 20
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    .line 21
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    .line 22
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lb8/d;->a(Lb8/a;Z)V

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p1

    const-class v1, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->killActivity(Ljava/lang/Class;)V

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "logout_reason"

    invoke-static {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 25
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v1, "last_hello_index"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLastLoginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "log_out_click"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->closeFaceToFacePerformClick(Landroid/app/Activity;)V

    .line 30
    new-instance p1, Lcom/guochao/faceshow/aaspring/db/FriendRepository;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/db/FriendRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->deleteAllFriendAsyn()V

    .line 31
    new-instance p1, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->deleteAllGroupAsyn()V

    .line 32
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 33
    :sswitch_f
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0060 -> :sswitch_f
        0x7f0a0172 -> :sswitch_e
        0x7f0a01a5 -> :sswitch_d
        0x7f0a01a6 -> :sswitch_c
        0x7f0a0283 -> :sswitch_b
        0x7f0a033f -> :sswitch_a
        0x7f0a088f -> :sswitch_9
        0x7f0a090e -> :sswitch_8
        0x7f0a0b44 -> :sswitch_7
        0x7f0a0c08 -> :sswitch_6
        0x7f0a0c1a -> :sswitch_5
        0x7f0a0c1d -> :sswitch_4
        0x7f0a0c27 -> :sswitch_3
        0x7f0a0c28 -> :sswitch_2
        0x7f0a0c29 -> :sswitch_1
        0x7f0a0c34 -> :sswitch_0
    .end sparse-switch
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b0

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0a03bf

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity;->pipFL:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity;->pipTV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public loadData()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v1

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    .line 2
    invoke-virtual {v1, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 3
    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/SettingActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/SettingActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-static {}, Lgb/c;->p()Lgb/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lgb/c;->s(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12081e

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity;->mCheckVersionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/AAMethod;->getFullVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    invoke-static {}, Lgb/c;->p()Lgb/c;

    move-result-object p1

    invoke-virtual {p1}, Lgb/c;->t()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/SettingActivity;->b0()V

    return-void
.end method
