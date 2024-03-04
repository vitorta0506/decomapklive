.class public final Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;,
        Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000256B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tH\u0003J\u0008\u0010!\u001a\u00020\u001fH\u0007J0\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0016\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020)0(j\u0008\u0012\u0004\u0012\u00020)`*H\u0007J\u0006\u0010+\u001a\u00020\u0011J\u0012\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010.\u001a\u00020\u0011H\u0002J\u0008\u0010/\u001a\u00020\u001fH\u0007J\u0008\u00100\u001a\u00020\u001fH\u0007J\u0008\u00101\u001a\u00020\u001fH\u0002J\u000e\u00102\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tJ\u0010\u00103\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0008\u00104\u001a\u00020\u001fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u00067"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;",
        "",
        "()V",
        "_life",
        "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;",
        "_viewBinding",
        "Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;",
        "currentActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "gcLiveRoomModel",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "getGcLiveRoomModel",
        "()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "setGcLiveRoomModel",
        "(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V",
        "hasRoom",
        "",
        "getHasRoom",
        "()Z",
        "setHasRoom",
        "(Z)V",
        "life",
        "getLife",
        "()Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;",
        "touchListener",
        "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;",
        "viewBinding",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;",
        "activityResume",
        "",
        "activity",
        "goBack",
        "gotoVoiceRoom",
        "context",
        "Landroid/content/Context;",
        "position",
        "",
        "list",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "Lkotlin/collections/ArrayList;",
        "isPlaying",
        "makeWindowLayoutParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "init",
        "releaseAll",
        "releaseView",
        "sendLeaveMessage",
        "showView",
        "startMini",
        "stopMini",
        "ActivityLife",
        "TouchListener",
        "component_liveroom_release"
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
.field public static final INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static _life:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static hasRoom:Z

.field private static touchListener:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final _get_viewBinding_$lambda-4$lambda-2(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    return-void
.end method

.method private static final _get_viewBinding_$lambda-4$lambda-3(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->goBack()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_get_viewBinding_$lambda-4$lambda-2(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$activityResume(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->activityResume(Landroid/app/Activity;)V

    return-void
.end method

.method private static final activityResume(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-virtual {v0, p0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->showView(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_get_viewBinding_$lambda-4$lambda-3(Landroid/view/View;)V

    return-void
.end method

.method private final getLife()Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;
    .locals 1

    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_life:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;

    if-nez v0, :cond_0

    new-instance v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_life:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;

    :cond_0
    return-object v0
.end method

.method private final getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;
    .locals 5

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x2710

    const/high16 v3, -0x80000000

    .line 6
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 7
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 8
    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 9
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    sget v2, Lcom/guochao/component/liveroom/R$raw;->voice_room_mini_recording:I

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 10
    invoke-virtual {v0}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "root"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;-><init>(Landroid/view/View;)V

    sput-object v2, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->touchListener:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->close:Landroid/widget/ImageView;

    sget-object v2, Lcom/guochao/component/voiceliveroom/helper/b;->a:Lcom/guochao/component/voiceliveroom/helper/b;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v0}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v2, Lcom/guochao/component/voiceliveroom/helper/c;->a:Lcom/guochao/component/voiceliveroom/helper/c;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sput-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    const-string v1, "inflate(\n               \u2026wBinding = this\n        }"

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final goBack()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v1

    const-string v2, "/app/liveroom"

    invoke-virtual {v1, v2}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    const/high16 v2, 0x20000

    .line 3
    invoke-virtual {v1, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->addFlags(I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "from_float"

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseView()V

    .line 7
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->stopMini()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->goBack()V

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/liveroom"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "voice_room"

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p2

    const-string v0, "ROOM_POS_KEY"

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private final makeWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    .line 6
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x30

    .line 7
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const v2, 0x800033

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 12
    :cond_2
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result p1

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 13
    sget-boolean p1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->hasRoom:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x43480000    # 200.0f

    goto :goto_2

    :cond_3
    const/high16 p1, 0x42c80000    # 100.0f

    .line 14
    :goto_2
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v2

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    sub-int/2addr v2, p1

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v2, p1

    .line 15
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    return-object v0
.end method

.method static synthetic makeWindowLayoutParams$default(Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;ZILjava/lang/Object;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->makeWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static final releaseAll()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->sendLeaveMessage()V

    .line 2
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseView()V

    .line 3
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->stopMini()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/event/VoiceRoomCloseEvent;

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/event/VoiceRoomCloseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static final releaseView()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final sendLeaveMessage()V
    .locals 3

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/user_leave_group"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.lib_service_center.liveroom.service.IUserLeaveMessage"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/lib_service_center/liveroom/service/IUserLeaveMessage;

    .line 4
    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2, v1}, Lcom/guochao/lib_service_center/liveroom/service/IUserLeaveMessage;->start(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final startMini(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
    .locals 2
    .param p0    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "gcLiveRoomModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    sput-object p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getLife()Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->makeWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final stopMini()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    const/4 v1, 0x0

    sput-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getLife()Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    sput-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_life:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;

    .line 4
    sput-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->_viewBinding:Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    .line 5
    sput-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getGcLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-object v0
.end method

.method public final getHasRoom()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->hasRoom:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setGcLiveRoomModel(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method

.method public final setHasRoom(Z)V
    .locals 0

    sput-boolean p1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->hasRoom:Z

    return-void
.end method

.method public final showView(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 5
    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->touchListener:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->setActivity(Ljava/lang/ref/WeakReference;)V

    .line 6
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->makeWindowLayoutParams$default(Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;ZILjava/lang/Object;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 9
    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 14
    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->getViewBinding()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_3
    return-void
.end method
