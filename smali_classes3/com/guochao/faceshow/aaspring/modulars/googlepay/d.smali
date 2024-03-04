.class public Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/k;
.implements Lcom/android/billingclient/api/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;,
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;
    }
.end annotation


# static fields
.field public static u:Ljava/lang/String; = "GOOGLE_PLAY_SIGN"

.field private static v:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

.field public static final w:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/android/billingclient/api/a;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field public q:Z

.field private final r:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vip1_1"

    goto :goto_0

    :cond_0
    const-string v0, "vip1"

    :goto_0
    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->w:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h0()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->e:I

    .line 4
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$j;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v3, "pay"

    const-string v4, "ProtectIds"

    .line 6
    invoke-static {v3, v4, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v5, "facecast1"

    const-string v6, "facecast2"

    const-string v7, "facecast3"

    const-string v8, "facecast4"

    const-string v9, "facecast7"

    const-string v10, "facecast8"

    .line 7
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$p;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 9
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 10
    invoke-static {v3, v4, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_1
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->g:Ljava/util/List;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v4, "vip1_1"

    const-string v5, "vip1_2"

    const-string v6, "vip1_3"

    const-string v7, "vip2_1"

    const-string v8, "vip2_2"

    const-string v9, "vip2_3"

    const-string v10, "vip3_1"

    const-string v11, "vip3_2"

    const-string v12, "vip3_3"

    const-string v13, "vvip1_1"

    const-string v14, "vvip1_2"

    const-string v15, "vvip1_3"

    const-string v16, "vvip2_1"

    const-string v17, "vvip2_2"

    const-string v18, "vvip2_3"

    const-string v19, "vvip3_1"

    const-string v20, "vvip3_2"

    const-string v21, "vvip3_3"

    .line 12
    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "vip1"

    const-string v4, "vip2"

    const-string v5, "vvip1"

    const-string v6, "vvip2"

    .line 13
    filled-new-array {v1, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k:I

    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l:Ljava/lang/String;

    .line 16
    iput v2, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    .line 17
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$l;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "ProtectSkuDetails"

    .line 20
    invoke-static {v3, v2, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->s:Ljava/util/List;

    .line 21
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$m;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 22
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "SubSkuDetails"

    .line 23
    invoke-static {v3, v2, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->t:Ljava/util/List;

    return-void
.end method

.method static synthetic A(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c:Z

    return p1
.end method

.method static synthetic B(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->P(Z)V

    return-void
.end method

.method static synthetic C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic D(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic E(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d:Ljava/lang/String;

    return-object p1
.end method

.method private E0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->F0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->G0(ZI)V

    return-void
.end method

.method private F0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const p3, 0x7f1203d1

    invoke-virtual {p2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_error_call:Ljava/lang/String;

    const-string p3, "\u8c37\u6b4c\u670d\u52a1\u5c1a\u672a\u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {p3, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "g_pay_error_4000"

    invoke-virtual {p3, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;

    invoke-direct {v1, p0, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 10
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v7}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method static synthetic G(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->S()Z

    move-result p0

    return p0
.end method

.method private G0(ZI)V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZI)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic H(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k:I

    return p0
.end method

.method private I(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l0()V

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v2, 0x7f1203d1

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d:Ljava/lang/String;

    .line 6
    :goto_0
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l0()V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private J(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Y()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 5
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->b()J

    move-result-wide v8

    .line 6
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->c()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {v5}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->b()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_2

    invoke-virtual {v5}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method private J0(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v1, "subscribe_sign"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "pay"

    const-string v0, "SubPurchase"

    const-string v1, ""

    .line 7
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 10
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->startSubscribe()V

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/subscribe/google/appPayCertificate"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "param"

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private L()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu7/c;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_before_server:Ljava/lang/String;

    const-string v4, "\u8fdb\u5165app\u91cd\u8bd5\u672a\u5b8c\u6210\u7684\u8ba2\u5355"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v4, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v4, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->isTimeout()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/4 v3, -0x2

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->K0(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private L0(Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "pay"

    const-string v2, "SubStatus"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;->a(Ljava/util/Map;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->R(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/a;->e(Ljava/lang/String;Lcom/android/billingclient/api/j;)V

    :cond_0
    return-void
.end method

.method private P(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)V

    const-string p1, "subs"

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/a;->e(Ljava/lang/String;Lcom/android/billingclient/api/j;)V

    return-void
.end method

.method private Q(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/subscribe/google/getSubscribeState"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "purchase_token"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private R(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->n:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u901a\u7684\u76ee\u6807subjectId\u662f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->p:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->o:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C0(Ljava/lang/String;I)V

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->t0(Ljava/util/Map;)V

    return-void
.end method

.method private S()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private T(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/f;->b()Lcom/android/billingclient/api/f$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/f$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/f$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/f$a;->a()Lcom/android/billingclient/api/f;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v0, p1, p0}, Lcom/android/billingclient/api/a;->a(Lcom/android/billingclient/api/f;Lcom/android/billingclient/api/g;)V

    :cond_0
    return-void
.end method

.method private U()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method public static X(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "anchorUserId"

    .line 2
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Y()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$n;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "pay"

    const-string v2, "PurchaseHistoryRecord"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$o;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public static Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->v:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->v:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->v:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->v:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    return-object v0
.end method

.method public static a0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->w:Ljava/lang/String;

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h0()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    const-string v0, "_"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 5
    aget-object p0, p0, v2

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    const-string v0, "\\d"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k0(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private c0(Ljava/lang/String;)D
    .locals 2

    :try_start_0
    const-string v0, "(\\d+\\.\\d+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->i0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->j0(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    return-void
.end method

.method public static e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->w:Ljava/lang/String;

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "_"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    const-string v0, "\\d"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->i:Z

    return p0
.end method

.method private g0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "facecast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static h0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->i:Z

    return p1
.end method

.method private synthetic i0(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->v0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    return-object p0
.end method

.method private synthetic j0(Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/b;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->T(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic k0(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/android/billingclient/api/a;->c(Landroid/content/Context;)Lcom/android/billingclient/api/a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/a$a;->b()Lcom/android/billingclient/api/a$a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/billingclient/api/a$a;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/a$a;->a()Lcom/android/billingclient/api/a;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z0(ZI)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l0()V

    return-void
.end method

.method private l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onPayError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    return p0
.end method

.method private m0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "childSubId"

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v2, "g_sub_click"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->p:I

    .line 7
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->n:Z

    if-eqz p4, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->x0()V

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->o:Ljava/lang/String;

    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->U()V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->F0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 15
    :cond_4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p4}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    move-result-object p4

    const-string v0, "subs"

    invoke-virtual {p4, v0}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    .line 19
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {p1}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;

    invoke-direct {v0, p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lcom/android/billingclient/api/a;->f(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method static synthetic n(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->E0(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic o(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->F0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->g0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private p0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pay"

    const-string v1, "PurchaseHistoryRecord"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Lcom/android/billingclient/api/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    return-object p0
.end method

.method static synthetic r(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->L0(Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V

    return-void
.end method

.method static synthetic s(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->N()V

    return-void
.end method

.method static synthetic t(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->J(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private t0(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pay"

    const-string v1, "SubStatus"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->p0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic v(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->R(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic w(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Q(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method static synthetic x(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->U()V

    return-void
.end method

.method private x0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->y0()V

    return-void
.end method

.method private y0()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic z(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c:Z

    return p0
.end method


# virtual methods
.method public A0(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->B0(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public B0(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k:I

    .line 2
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    .line 3
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "id"

    .line 5
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p4, "g_pay_click"

    invoke-virtual {p3, p4, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I(Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_error_call:Ljava/lang/String;

    const-string p4, "\u8c37\u6b4c\u670d\u52a1\u6682\u4e0d\u53ef\u7528"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "g_pay_error_4000"

    invoke-virtual {p3, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object p3

    .line 15
    invoke-virtual {p3, p2}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    move-result-object p2

    const-string p4, "inapp"

    invoke-virtual {p2, p4}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/billingclient/api/SkuDetails;

    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p4}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->E0(Ljava/util/List;I)V

    return-void

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {p3}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/billingclient/api/a;->f(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method public C0(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->x0()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->startSubscribe()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public H0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->j:Z

    return-void
.end method

.method public I0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->H0()V

    return-void
.end method

.method public K(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->n:Z

    .line 3
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I(Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;->a(Ljava/util/Map;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->R(Ljava/util/Map;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->L0(Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;

    invoke-direct {v2, p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V

    const-string p1, "subs"

    invoke-virtual {v1, p1, v2}, Lcom/android/billingclient/api/a;->d(Ljava/lang/String;Lcom/android/billingclient/api/i;)V

    return-void
.end method

.method public K0(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signture"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signtureData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sceneType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v3, Lcom/guochao/faceshow/utils/Contants;->GOOGLE_PAY_WAY:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public M(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/push/CustomPushReceiver;->a:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->q:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->q:Z

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->n0(Z)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->P(Z)V

    :goto_0
    return-void
.end method

.method public O()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v1, "pay"

    const-string v2, "SubPurchase"

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->J0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public V(Lcom/android/billingclient/api/m;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/billingclient/api/e;

    invoke-direct {v0}, Lcom/android/billingclient/api/e;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/a;->f(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/android/billingclient/api/a;->f(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public W(Lcom/android/billingclient/api/m;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/billingclient/api/e;

    invoke-direct {v0}, Lcom/android/billingclient/api/e;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    move-result-object v0

    const-string v2, "subs"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v1}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/a;->f(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 9
    invoke-static {}, Lcom/android/billingclient/api/e;->c()Lcom/android/billingclient/api/e$a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/e$a;->c(I)Lcom/android/billingclient/api/e$a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/e$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/e$a;->a()Lcom/android/billingclient/api/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 13
    .param p1    # Lcom/android/billingclient/api/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/e;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "facecast"

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 6
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 7
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c0(Ljava/lang/String;)D

    move-result-wide v10

    .line 8
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->e()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_1

    cmpl-double v5, v10, v8

    if-nez v5, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    sget-object v6, Lcom/guochao/faceshow/aaspring/utils/AppsFlyerPayUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/AppsFlyerPayUtils;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v3

    move-object v8, v4

    move-wide v9, v10

    move-object v11, v3

    invoke-virtual/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/utils/AppsFlyerPayUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 10
    :catch_0
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result p1

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPurchasesUpdated billResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", purchase = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 13
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$w;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$w;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k:I

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->googlePayCertificate(ILjava/lang/String;Lcom/android/billingclient/api/Purchase;)V

    .line 16
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->T(Ljava/lang/String;)V

    .line 17
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "g_pay_success_call_4000"

    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result v3

    if-nez v3, :cond_6

    .line 19
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "first_charge_success_types_4000"

    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, "first_charge_success_price_4000"

    invoke-virtual {v2, v3, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_7
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->j:Z

    if-eqz v2, :cond_8

    return-void

    .line 22
    :cond_8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$b;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    invoke-virtual {v2, p2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->subscribePayCertificate(Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_9
    return-void

    .line 23
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_b

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onSubscribeFailed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public b(Lcom/android/billingclient/api/e;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/android/billingclient/api/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 4
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onConsumeResponse()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p2, "g_pay_success_call_4000"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_error_call:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6d88\u8017\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "g_pay_error_4000"

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u6d88\u8017\u6210\u529f\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", s = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->s:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->s:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->s:Ljava/util/List;

    return-object v0
.end method

.method public d0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->t:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->t:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->t:Ljava/util/List;

    return-object v0
.end method

.method public f0()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->e:I

    return v0
.end method

.method public n0(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/k;->subscribe()Lth/b;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->L()V

    return-void
.end method

.method public o0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public q0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->g:Ljava/util/List;

    const-string v0, "pay"

    const-string v1, "ProtectIds"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public r0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pay"

    const-string v1, "ProtectSkuDetails"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public s0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pay"

    const-string v1, "SubSkuDetails"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public u0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "zune: "

    if-ne v0, v1, :cond_0

    const-string v0, "Current Thread is Main Thread."

    .line 2
    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Current Thread is async Thread."

    .line 3
    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r0(Ljava/util/List;)V

    return-void
.end method

.method public w0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->s0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public z0(ZI)V
    .locals 2

    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->i:Z

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->j:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/a;->c(Landroid/content/Context;)Lcom/android/billingclient/api/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/a$a;->b()Lcom/android/billingclient/api/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/a$a;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/a$a;->a()Lcom/android/billingclient/api/a;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->i:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u8fde\u63a5Google play .......\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->b:Lcom/android/billingclient/api/a;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/a;->g(Lcom/android/billingclient/api/c;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 11
    invoke-interface {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onSetupResponse(Z)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->N()V

    :goto_1
    return-void
.end method
