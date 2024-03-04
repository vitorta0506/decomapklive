.class public final Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\nJ\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010 \u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J0\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0014J\u0018\u0010\'\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0007H\u0014J\u0012\u0010*\u001a\u00020\u001d2\u0008\u0010+\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010,\u001a\u00020\u001aH\u0002J\u0014\u0010-\u001a\u00020\u001a2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "_controllerFragment",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;",
        "controllerFragment",
        "getControllerFragment",
        "()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;",
        "hGap",
        "seatViewList",
        "",
        "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;",
        "value",
        "totalSeatNumber",
        "setTotalSeatNumber",
        "(I)V",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "wGap",
        "attachController",
        "",
        "voiceRoomMainControllerFragment",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onInterceptTouchEvent",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onTouchEvent",
        "event",
        "recreate",
        "updateSeats",
        "list",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
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


# instance fields
.field private _controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hGap:I

.field private final seatViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private totalSeatNumber:I

.field private viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

.field private wGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->hGap:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->attachController$lambda-10$lambda-9(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final attachController$lambda-10$lambda-9(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;Ljava/util/ArrayList;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    if-eqz p1, :cond_7

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;

    .line 5
    iget-object v8, v7, Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->getLastSeatModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v10

    :goto_2
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v7, Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;->userId:Ljava/lang/String;

    const-string v9, "it1.userId"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->getLastSeatModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v10

    :goto_4
    sget-object v9, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v9}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v9

    .line 6
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v10

    :cond_5
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    :cond_6
    iget v7, v7, Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;->volume:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_1

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_0

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_9
    check-cast v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 12
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->playVoiceWave()V

    goto :goto_6

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->stopVoiceWaveImmediatelysDelayed()V

    :goto_6
    move v2, v3

    goto :goto_5

    :cond_b
    return-void
.end method

.method private final getControllerFragment()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->_controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must attach to a VoiceRoomMainControllerFragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final recreate()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->totalSeatNumber:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    .line 5
    invoke-virtual {v1, v3}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->update(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V

    .line 6
    invoke-virtual {v1, v4}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->setSeatIndex(I)V

    .line 7
    iget v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->totalSeatNumber:I

    const/16 v5, 0x8

    if-eq v2, v5, :cond_3

    const/16 v5, 0xa

    if-eq v2, v5, :cond_2

    .line 8
    sget-object v2, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->ELEVEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    goto :goto_2

    .line 9
    :cond_2
    sget-object v2, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->TEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    goto :goto_2

    .line 10
    :cond_3
    sget-object v2, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->EIGHT:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    .line 11
    :goto_2
    invoke-virtual {v1, v2}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->setVoiceRoomLayoutMode(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v2, v4

    goto :goto_1

    :cond_4
    return-void

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->totalSeatNumber:I

    if-le v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->totalSeatNumber:I

    if-ge v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    new-instance v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    if-nez v4, :cond_7

    const-string v4, "viewModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_7
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->getControllerFragment()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private final setTotalSeatNumber(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->totalSeatNumber:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->totalSeatNumber:I

    .line 3
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->recreate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final attachController(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "voiceRoomMainControllerFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->_controllerFragment:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    const/16 p1, 0x8

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->setTotalSeatNumber(I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->getControllerFragment()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getVoiceVolume()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    new-instance v1, Lcom/guochao/component/voiceliveroom/view/a;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/view/a;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p5, p3, 0x1

    if-gez p3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast p4, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    .line 3
    div-int/lit8 v0, p3, 0x4

    .line 4
    rem-int/lit8 p3, p3, 0x4

    .line 5
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    mul-int v1, v1, p3

    if-nez p3, :cond_1

    .line 6
    iget p3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->wGap:I

    goto :goto_1

    .line 7
    :cond_1
    iget v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->wGap:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x1

    mul-int p3, p3, v2

    :goto_1
    add-int/2addr v1, p3

    .line 8
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    mul-int p3, p3, v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 9
    :cond_2
    iget v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->hGap:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    :goto_2
    add-int/2addr p3, v2

    .line 10
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 12
    invoke-virtual {p4, v1, p3, v0, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    move p3, p5

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 4
    iget v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->totalSeatNumber:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    .line 7
    div-int v6, p2, v0

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 9
    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 10
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 11
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 12
    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 13
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 14
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p2, v4

    div-int/lit8 p2, p2, 0x2

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    div-int/2addr p2, v0

    iput p2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->wGap:I

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    mul-int/lit8 v5, v5, 0x2

    iget p2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->hGap:I

    add-int/2addr v5, p2

    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final updateSeats(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->seatViewList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 5
    invoke-virtual {v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v6

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->getSeatIndex()I

    move-result v7

    if-ne v6, v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 8
    :goto_2
    invoke-virtual {v1, v2}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;->update(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V

    goto :goto_0

    :cond_4
    return-void
.end method
