.class public Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"

# interfaces
.implements Lp9/a$e;
.implements Lcom/guochao/faceshow/signin/RechargeListener;
.implements Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u0000 f2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002fgB\u0007\u00a2\u0006\u0004\u0008e\u0010AJ\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u001c\u0010\u000c\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u001c\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0016\u0010\u0016\u001a\u00020\u00052\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0008\u0010\u0017\u001a\u00020\u0005H\u0002J\"\u0010\u001b\u001a\u00020\u00052\u0010\u0010\u0019\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u0012\u0010\u001e\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010 \u001a\u00020\u001f2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014J\u0008\u0010%\u001a\u00020$H\u0016J\u0008\u0010&\u001a\u00020$H\u0016J\u0008\u0010\'\u001a\u00020$H\u0016J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0010H\u0016J\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u0008\u0010+\u001a\u00020\u0005H\u0016J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020$H\u0016J\u0008\u0010.\u001a\u00020\u0005H\u0016J\u001a\u00103\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u000101H\u0016J\u0008\u00104\u001a\u00020\u0005H\u0016R\u001d\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R(\u0010:\u001a\u0002098\u0016@\u0016X\u0097.\u00a2\u0006\u0018\n\u0004\u0008:\u0010;\u0012\u0004\u0008@\u0010A\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R$\u0010B\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR$\u0010H\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010O\u001a\u00020N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\"\u0010U\u001a\u0002018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u0018\u0010\\\u001a\u00060[R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0016\u0010^\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\"\u0010`\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008`\u0010b\"\u0004\u0008c\u0010d\u00a8\u0006h"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Lp9/a$e;",
        "Lcom/guochao/faceshow/signin/RechargeListener;",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;",
        "",
        "getRechargeModeList",
        "loadHeaderData",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/guochao/faceshow/aaspring/beans/GiftBean;",
        "giftBean",
        "setImageResouse",
        "Landroid/widget/TextView;",
        "textView",
        "setTextView",
        "",
        "preLoad",
        "dispatchRechargeResponse",
        "",
        "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
        "appSkuLocal",
        "realSkuResponse",
        "getGoogleSkus",
        "",
        "responseData",
        "updatePrice",
        "saveAppSkuLocal",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "Landroid/view/View;",
        "root",
        "initView",
        "",
        "getSelectTextColor",
        "getStartBuyBackground",
        "getRechargeItemBackground",
        "enable",
        "onSetupResponse",
        "getAppSkuLocal",
        "onDestroy",
        "currentDiamonds",
        "onDiamondsChanged",
        "onRecharged",
        "Landroidx/fragment/app/FragmentManager;",
        "manager",
        "",
        "tag",
        "show",
        "dismissAllowingStateLoss",
        "mDataList",
        "Ljava/util/List;",
        "getMDataList",
        "()Ljava/util/List;",
        "Lcom/guochao/faceshow/databinding/DialogRechargeBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/DialogRechargeBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/DialogRechargeBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "rechargeHeader",
        "Landroid/view/View;",
        "getRechargeHeader",
        "()Landroid/view/View;",
        "setRechargeHeader",
        "(Landroid/view/View;)V",
        "tvCountDown",
        "Landroid/widget/TextView;",
        "getTvCountDown",
        "()Landroid/widget/TextView;",
        "setTvCountDown",
        "(Landroid/widget/TextView;)V",
        "Lcom/guochao/faceshow/views/g;",
        "countDownTimerUtil",
        "Lcom/guochao/faceshow/views/g;",
        "getCountDownTimerUtil",
        "()Lcom/guochao/faceshow/views/g;",
        "setCountDownTimerUtil",
        "(Lcom/guochao/faceshow/views/g;)V",
        "mIsSelectId",
        "Ljava/lang/String;",
        "getMIsSelectId",
        "()Ljava/lang/String;",
        "setMIsSelectId",
        "(Ljava/lang/String;)V",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;",
        "runnable",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;",
        "requestCount",
        "I",
        "isShow",
        "Z",
        "()Z",
        "setShow",
        "(Z)V",
        "<init>",
        "Companion",
        "RechargeRunnable",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRESS_UP_MARKET:I = 0x6

.field public static final F2F_GIFT:I = 0x8

.field public static final FILTER_1V1:I = 0x7

.field public static final FROM_TASK:I = 0x1

.field public static final IM_GIFT:I = 0x4

.field public static final LIVE_GAME:I = 0x3

.field public static final LIVE_GIFT:I = 0x2

.field public static final TRTC_CALL:I = 0x9

.field public static final TRTC_GIFT:I = 0xa

.field public static final VIDEO_GIFT:I = 0x5

.field public static final VOICE_ENTER:I = 0xc

.field public static final VOICE_GIFT:I = 0xb


# instance fields
.field private countDownTimerUtil:Lcom/guochao/faceshow/views/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isShow:Z

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mIsSelectId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rechargeHeader:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private requestCount:I

.field private final runnable:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tvCountDown:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/DialogRechargeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mDataList:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$countDownTimerUtil$1;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$countDownTimerUtil$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;J)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->countDownTimerUtil:Lcom/guochao/faceshow/views/g;

    const-string v0, "facecast1"

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mIsSelectId:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->runnable:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;

    return-void
.end method

.method public static synthetic P1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->initView$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getGoogleSkus$lambda-13$lambda-12(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    return-void
.end method

.method public static synthetic R1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->loadHeaderData$lambda-6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic U1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->loadHeaderData$lambda-5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getGoogleSkus$lambda-13(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Lcom/android/billingclient/api/e;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$dispatchRechargeResponse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->dispatchRechargeResponse(Z)V

    return-void
.end method

.method public static final synthetic access$realSkuResponse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->realSkuResponse(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$saveAppSkuLocal(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->saveAppSkuLocal(Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic access$setImageResouse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method public static final synthetic access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method private final dispatchRechargeResponse(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->requestCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->requestCount:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->requestCount:I

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getAppSkuLocal()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->realSkuResponse(Ljava/util/List;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->runnable:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->setData(Ljava/util/List;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->runnable:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->runnable:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final getGoogleSkus()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/p;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->V(Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method private static final getGoogleSkus$lambda-13(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/q;

    invoke-direct {v0, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/q;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final getGoogleSkus$lambda-13$lambda-12(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->v0(Ljava/util/List;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSkuDetailsResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zune\uff1a"

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getAppSkuLocal()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getAppSkuLocal()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->saveAppSkuLocal(Ljava/util/List;Z)V

    :cond_0
    const/4 p0, 0x0

    .line 5
    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->dispatchRechargeResponse(Z)V

    return-void
.end method

.method private final getRechargeModeList()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getAppSkuLocal()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->dispatchRechargeResponse(Z)V

    .line 4
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->e()Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->e()Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "currencyCode"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGson().toJson(map)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "param"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    sget-object v3, Lcom/guochao/faceshow/utils/Contants;->RECHARGE_MODE_LIST:Ljava/lang/String;

    .line 11
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;

    invoke-direct {v4, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    .line 12
    invoke-interface {v2, p0, v3, v1, v4}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    :cond_2
    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;ILandroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->recharge_start_pay:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v0, "fast_recharge_recharge_click_3000"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p2

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mIsSelectId:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object p0

    invoke-interface {p0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p2, v1, p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->B0(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz p2, :cond_2

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mIsSelectId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.RechargeFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iget p0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->l:I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->A0(Ljava/lang/String;II)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p2

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mIsSelectId:Ljava/lang/String;

    invoke-virtual {p2, p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->A0(Ljava/lang/String;II)V

    :goto_1
    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->tvDiamond:Landroid/widget/TextView;

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final loadHeaderData()V
    .locals 11

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    instance-of v2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->rechargeHeaderPage:Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->rechargeHeader:Landroid/view/ViewStub;

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 3
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    if-eqz v2, :cond_2

    const v4, 0x7f0a0c65

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->tvCountDown:Landroid/widget/TextView;

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    const v4, 0x7f0a095b

    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_3

    .line 7
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$loadHeaderData$1$1;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$loadHeaderData$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    if-eqz v2, :cond_4

    const v3, 0x7f0a0dff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/o;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/o;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    if-eqz v2, :cond_5

    const v3, 0x7f0a0e00

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/n;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/n;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :cond_5
    const-string v2, "pay"

    const-string v3, "RechargeHeaderData"

    .line 11
    invoke-static {v2, v3, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_7
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v3, "api/token/promotion/firstpay/list"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 16
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$loadHeaderData$$inlined$success$1;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$loadHeaderData$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 17
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 18
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$loadHeaderData$$inlined$fail$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$loadHeaderData$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 19
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method private static final loadHeaderData$lambda-5(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;->showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    return-void
.end method

.method private static final loadHeaderData$lambda-6(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;->showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    return-void
.end method

.method private final realSkuResponse(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private final saveAppSkuLocal(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getSign()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object v6, v3

    .line 8
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getSign()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->setPrice(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_1

    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getPrice()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_3
    if-nez v2, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->setPrice(Ljava/lang/String;)V

    :goto_4
    if-eqz v2, :cond_7

    .line 12
    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getDefaultPrice()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_7
    move-object v5, v3

    :goto_5
    if-eqz v4, :cond_9

    .line 13
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    .line 14
    :cond_8
    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->setPrice(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    :goto_6
    if-nez v2, :cond_a

    goto :goto_0

    .line 15
    :cond_a
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->setPrice(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string p2, "pay"

    const-string v0, "AppSkuDetails"

    .line 16
    invoke-static {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_7
    return-void
.end method

.method private final setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeType()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_8

    const p2, 0x7f0f029d

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-nez v1, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    if-eqz p1, :cond_8

    const p2, 0x7f0f01f7

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_4
    :goto_2
    const/4 v2, 0x2

    if-nez v1, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_8

    const p2, 0x7f0f01f8

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeUrl()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lhc/a;->k(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method private final setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeUseDay()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 p2, 0x1

    .line 3
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInstance().resources.\u2026R.plurals.gift_days, day)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, " "

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_2

    goto :goto_4

    .line 5
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    if-nez p1, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    :goto_2
    if-gtz v1, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GiftBean;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3

    :cond_7
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-void
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->isShow:Z

    return-void
.end method

.method public final getAppSkuLocal()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getAppSkuLocal$cache$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getAppSkuLocal$cache$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "pay"

    const-string v2, "AppSkuDetails"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final getCountDownTimerUtil()Lcom/guochao/faceshow/views/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->countDownTimerUtil:Lcom/guochao/faceshow/views/g;

    return-object v0
.end method

.method public final getMDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public final getMIsSelectId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mIsSelectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRechargeHeader()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    return-object v0
.end method

.method public getRechargeItemBackground()I
    .locals 1

    const v0, 0x7f0800d3

    return v0
.end method

.method public getSelectTextColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const v1, 0x7f06009c

    .line 2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getStartBuyBackground()I
    .locals 1

    const v0, 0x7f0801bd

    return v0
.end method

.method public final getTvCountDown()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->tvCountDown:Landroid/widget/TextView;

    return-object v0
.end method

.method public getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
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

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_1
    instance-of v1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    if-eqz v1, :cond_2

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz v1, :cond_3

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->recharge_page:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.RechargeFragment"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iget v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->l:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-lez v0, :cond_3

    .line 6
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fast_recharge_dialog_show_4000"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->bgView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->contentArea:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/m;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/m;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->lessMoney:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-string v3, "hideLessMoney"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 11
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->tvDiamond:Landroid/widget/TextView;

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->startBuy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getStartBuyBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->startBuy:Landroid/widget/TextView;

    const-string v1, "viewBinding.startBuy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x7d0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/l;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;I)V

    invoke-static {v0, v3, v4, v1}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 17
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$initView$4;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$initView$4;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getRechargeModeList()V

    .line 20
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shouldShowFirstRecharge()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->loadHeaderData()V

    .line 22
    :cond_6
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/r;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    invoke-virtual {p1, p2}, Lp9/a;->refreshWalletData(Lp9/a$f;)V

    return-void
.end method

.method public final isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->isShow:Z

    return v0
.end method

.method public bridge synthetic onConsumeResponse()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->a(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp9/a;->c(Lp9/a$e;)V

    .line 4
    sget-object p1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/signin/SigninManager;->registerRechargeListener(Lcom/guochao/faceshow/signin/RechargeListener;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z0(ZI)V

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

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-object p1
.end method

.method public bridge synthetic onCrystalsChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lp9/b;->a(Lp9/a$e;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->countDownTimerUtil:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/signin/SigninManager;->unRegisterRechargeListener(Lcom/guochao/faceshow/signin/RechargeListener;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->tvDiamond:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
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
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "fast_recharge_recharge_success_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetupResponse(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getGoogleSkus()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->dispatchRechargeResponse(Z)V

    :goto_0
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

.method public final setCountDownTimerUtil(Lcom/guochao/faceshow/views/g;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/views/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->countDownTimerUtil:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method public final setMIsSelectId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->mIsSelectId:Ljava/lang/String;

    return-void
.end method

.method public final setRechargeHeader(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->rechargeHeader:Landroid/view/View;

    return-void
.end method

.method public final setShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->isShow:Z

    return-void
.end method

.method public final setTvCountDown(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->tvCountDown:Landroid/widget/TextView;

    return-void
.end method

.method public setViewBinding(Lcom/guochao/faceshow/databinding/DialogRechargeBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/DialogRechargeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

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
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->isShow:Z

    return-void
.end method

.method public bridge synthetic startSubscribe()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method
