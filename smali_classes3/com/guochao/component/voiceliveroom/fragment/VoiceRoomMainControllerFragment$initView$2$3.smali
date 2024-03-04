.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;->initView$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$initView$2$3;->invoke(Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$requireLiveRoomViewController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;->hideLoading(Z)V

    return-void
.end method
