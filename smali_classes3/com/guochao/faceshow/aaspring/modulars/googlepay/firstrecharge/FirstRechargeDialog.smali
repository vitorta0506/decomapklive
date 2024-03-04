.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;
.implements Lcom/guochao/faceshow/signin/RechargeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 a2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001aB\u0007\u00a2\u0006\u0004\u0008`\u0010WJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\u001a\u0010\u0013\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0018\u001a\u00020\u0006H\u0002J\u0012\u0010\u001b\u001a\u00020\u000b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014J\u0010\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!H\u0016J\u0014\u0010&\u001a\u00020\u000b2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00110$J\u0014\u0010\'\u001a\u00020\u000b2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00110$J\u0014\u0010(\u001a\u00020\u000b2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00110$J\u0008\u0010)\u001a\u00020\u000bH\u0016J\u001a\u0010.\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u0008\u0010/\u001a\u00020\u000bH\u0016R6\u00102\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u000100j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`18\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R6\u00108\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u000100j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`18\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00103\u001a\u0004\u00089\u00105\"\u0004\u0008:\u00107R\"\u0010;\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008;\u0010=\"\u0004\u0008>\u0010?R\"\u0010@\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\"\u0010F\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\"\u0010L\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010G\u001a\u0004\u0008M\u0010I\"\u0004\u0008N\u0010KR(\u0010P\u001a\u00020O8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008P\u0010Q\u0012\u0004\u0008V\u0010W\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\"\u0010X\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010<\u001a\u0004\u0008Y\u0010=\"\u0004\u0008Z\u0010?R\u0017\u0010\\\u001a\u00020[8\u0006\u00a2\u0006\u000c\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\u00a8\u0006b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;",
        "Lcom/guochao/faceshow/signin/RechargeListener;",
        "",
        "offsetTime",
        "",
        "getTime",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;",
        "response",
        "",
        "refreshData",
        "refreshText",
        "setCountDownTime",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/guochao/faceshow/aaspring/beans/GiftBean;",
        "giftBean",
        "setImageResouse",
        "Landroid/widget/TextView;",
        "textView",
        "setTextView",
        "setNumber",
        "getScene",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "Landroid/view/View;",
        "root",
        "initView",
        "",
        "enable",
        "onSetupResponse",
        "",
        "data",
        "showOneContent",
        "showTwoContent",
        "showMoreContent",
        "onRecharged",
        "Landroidx/fragment/app/FragmentManager;",
        "manager",
        "",
        "tag",
        "show",
        "onDestroyView",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mDescX",
        "Ljava/util/ArrayList;",
        "getMDescX",
        "()Ljava/util/ArrayList;",
        "setMDescX",
        "(Ljava/util/ArrayList;)V",
        "mDescY",
        "getMDescY",
        "setMDescY",
        "isShow",
        "Z",
        "()Z",
        "setShow",
        "(Z)V",
        "mType",
        "I",
        "getMType",
        "()I",
        "setMType",
        "(I)V",
        "showTime",
        "J",
        "getShowTime",
        "()J",
        "setShowTime",
        "(J)V",
        "rechargeClickTIme",
        "getRechargeClickTIme",
        "setRechargeClickTIme",
        "Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "mGoogleEnable",
        "getMGoogleEnable",
        "setMGoogleEnable",
        "Lcom/guochao/faceshow/views/g;",
        "countdownTimer",
        "Lcom/guochao/faceshow/views/g;",
        "getCountdownTimer",
        "()Lcom/guochao/faceshow/views/g;",
        "<init>",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final AUTO_SHOW_LIVE:I = 0x1

.field public static final AUTO_SHOW_WALLET:I = 0x9

.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_1V1_GIFT:I = 0x7

.field public static final SHOW_DATING_GIFT:I = 0x8

.field public static final SHOW_HOME:I = 0x2

.field public static final SHOW_IM_GIFT:I = 0x5

.field public static final SHOW_LIVE:I = 0x3

.field public static final SHOW_LIVE_GIFT:I = 0x4

.field public static final SHOW_VIDEO_GIFT:I = 0x6

.field public static final SHOW_WALLET:I = 0xa


# instance fields
.field private final countdownTimer:Lcom/guochao/faceshow/views/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isShow:Z

.field private mDescX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDescY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mGoogleEnable:Z

.field private mType:I

.field private rechargeClickTIme:J

.field private showTime:J

.field public viewBinding:Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$countdownTimer$1;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$countdownTimer$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;J)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->countdownTimer:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->onSetupResponse$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Lcom/android/billingclient/api/e;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Q1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->onSetupResponse$lambda-2$lambda-1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;)V

    return-void
.end method

.method public static final synthetic access$getTime(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;J)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getTime(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$refreshData(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->refreshData(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    return-void
.end method

.method public static final synthetic access$refreshText(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->refreshText()V

    return-void
.end method

.method public static final synthetic access$setImageResouse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method public static final synthetic access$setNumber(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setNumber(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method public static final synthetic access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method private final getScene()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->g0()I

    move-result v0

    return v0

    :cond_0
    return v1

    :pswitch_1
    const/4 v0, 0x6

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/4 v0, 0x5

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getTime(J)I
    .locals 3

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1e

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x258

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x708

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final onSetupResponse$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/b;

    invoke-direct {v0, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/b;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final onSetupResponse$lambda-2$lambda-1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    const-string v1, "facecast1"

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->isShow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->tvRechargeBtn:Landroid/widget/TextView;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120169

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private final refreshData(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->firstRechargeBags:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    const/4 v1, 0x1

    if-nez v0, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showOneContent(Ljava/util/List;)V

    goto :goto_5

    :cond_5
    :goto_3
    const/4 v1, 0x2

    if-nez v0, :cond_6

    goto :goto_4

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showTwoContent(Ljava/util/List;)V

    goto :goto_5

    .line 9
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showMoreContent(Ljava/util/List;)V

    .line 10
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setCountDownTime()V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getBonusDiamond()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->firstRechargeDiamond:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private final refreshText()V
    .locals 11

    const v0, 0x5265c00

    int-to-long v0, v0

    .line 1
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->getLastLoginTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 2
    div-long/2addr v0, v2

    const/16 v2, 0xe10

    int-to-long v2, v2

    div-long v2, v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->tvHour:Landroid/widget/TextView;

    const/16 v5, 0x30

    const-wide/16 v6, 0xa

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3c

    int-to-long v2, v2

    .line 4
    div-long v8, v0, v2

    rem-long/2addr v8, v2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->tvMinute:Landroid/widget/TextView;

    cmp-long v10, v8, v6

    if-gez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    rem-long/2addr v0, v2

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->tvSecond:Landroid/widget/TextView;

    cmp-long v3, v0, v6

    if-gez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setCountDownTime()V
    .locals 5

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->getLastLoginTime()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->tvHour:Landroid/widget/TextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->tvMinute:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->tvSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->countdownTimer:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->refreshText()V

    return-void
.end method

.method private final setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_6

    const p2, 0x7f0f029d

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_6

    const p2, 0x7f0f01f7

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v1, 0x2

    if-nez v0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_6

    const p2, 0x7f0f01f8

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lhc/a;->k(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method private final setNumber(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-gtz v1, :cond_2

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private final setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeType()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12083f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    if-gtz v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    .line 5
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_7

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const p2, 0x7f120424

    .line 6
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    :goto_3
    const/4 v1, 0x2

    if-nez v0, :cond_8

    goto :goto_4

    .line 7
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_a

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    const p2, 0x7f12076a

    .line 8
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    :goto_4
    if-nez p1, :cond_b

    goto :goto_5

    .line 9
    :cond_b
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public static final showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
    .locals 1
    .param p0    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;->showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
    .locals 1
    .param p0    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;->showDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCountdownTimer()Lcom/guochao/faceshow/views/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->countdownTimer:Lcom/guochao/faceshow/views/g;

    return-object v0
.end method

.method public final getMDescX()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mDescX:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMDescY()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mDescY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMGoogleEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mGoogleEnable:Z

    return v0
.end method

.method public final getMType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mType:I

    return v0
.end method

.method public final getRechargeClickTIme()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->rechargeClickTIme:J

    return-wide v0
.end method

.method public final getShowTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showTime:J

    return-wide v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->getLifecycleSupportedScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$initView$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$initView$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->isShow:Z

    return v0
.end method

.method public bridge synthetic onConsumeResponse()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->a(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x3f19999a    # 0.6f

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->countdownTimer:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/signin/SigninManager;->unRegisterRechargeListener(Lcom/guochao/faceshow/signin/RechargeListener;)V

    return-void
.end method

.method public bridge synthetic onPayError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->b(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onPayResponse()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->c(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onRecharged()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_charge_success_4000"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getScene()I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_charge_success_scene_4000"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->rechargeClickTIme:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getTime(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_charge_success_time2_4000"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showTime:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getTime(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_charge_success_time_4000"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetupResponse(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mGoogleEnable:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->V(Lcom/android/billingclient/api/m;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSubscribeFailed()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->d(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public bridge synthetic onSubscribeSuccess()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->e(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public final setMDescX(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mDescX:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMDescY(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mDescY:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMGoogleEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mGoogleEnable:Z

    return-void
.end method

.method public final setMType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->mType:I

    return-void
.end method

.method public final setRechargeClickTIme(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->rechargeClickTIme:J

    return-void
.end method

.method public final setShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->isShow:Z

    return-void
.end method

.method public final setShowTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showTime:J

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->isShow:Z

    return-void
.end method

.method public final showMoreContent(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->firstRechargeBags:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->firstRechargeBags:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0238

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a095c

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final showOneContent(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->firstRechargeBags:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0239

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03da

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    const v1, 0x7f0a03e0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    const v1, 0x7f0a03e1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setNumber(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method public final showTwoContent(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;->firstRechargeBags:Landroid/widget/FrameLayout;

    const v2, 0x7f0d023a

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03da

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    const v1, 0x7f0a03e0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    const v1, 0x7f0a03e1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setNumber(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    const v1, 0x7f0a0a2d

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    const v1, 0x7f0a0a33

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    const v1, 0x7f0a0a34

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->setNumber(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method public bridge synthetic startSubscribe()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method
