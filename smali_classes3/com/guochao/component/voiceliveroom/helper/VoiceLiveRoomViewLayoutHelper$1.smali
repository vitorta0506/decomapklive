.class public final Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;-><init>(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1",
        "Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView$OnLayoutListener;",
        "onLayout",
        "",
        "root",
        "Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;",
        "changed",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
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
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1;->this$0:Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;ZIIII)V
    .locals 0
    .param p1    # Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p2, Lcom/guochao/component/liveroom/R$id;->voice_room_seat_area:I

    invoke-virtual {p1, p2}, Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;->findView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    sget p3, Lcom/guochao/component/liveroom/R$id;->user_info_fragment:I

    invoke-virtual {p1, p3}, Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;->findView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p4

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {p2, p4, p3, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1;->$view:Landroid/view/View;

    check-cast p3, Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;

    sget p4, Lcom/guochao/component/liveroom/R$id;->chat_fragment:I

    invoke-virtual {p3, p4}, Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;->findView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1;->this$0:Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;

    .line 7
    invoke-virtual {p4, p3, p2, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;->layoutChatContentListView(Landroid/view/View;Landroid/view/View;Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;)V

    :cond_1
    return-void
.end method
