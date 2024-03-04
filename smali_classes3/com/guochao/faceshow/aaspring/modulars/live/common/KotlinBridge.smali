.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J \u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;",
        "",
        "()V",
        "checkLiveFloatIM",
        "",
        "fragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
        "view",
        "Landroid/view/View;",
        "startChatFromLiveRoom",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;",
        "userId",
        "",
        "userName",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkLiveFloatIM(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 1
    .param p0    # Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0a069a

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$checkLiveFloatIM$1;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$checkLiveFloatIM$1;-><init>(Landroid/view/View;)V

    const-string p0, "live_im_msg"

    invoke-static {p0, p1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    return-void
.end method

.method public static final startChatFromLiveRoom(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Ljava/lang/String;)V

    const-string p1, "live_im_msg"

    invoke-static {p1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
