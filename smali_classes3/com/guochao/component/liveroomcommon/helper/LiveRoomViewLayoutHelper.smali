.class public abstract Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H&J\u0006\u0010\u0012\u001a\u00020\u0003J;\u0010\u0013\u001a\u00020\u000c\"\u0008\u0008\u0000\u0010\u0014*\u00020\u00032\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00162\u0019\u0008\u0002\u0010\u0017\u001a\u0013\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u0019H\u0086\u0008\u00f8\u0001\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;",
        "",
        "contentView",
        "Landroid/view/View;",
        "gcLiveRoomModel",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V",
        "getContentView$component_liveroom_release",
        "()Landroid/view/View;",
        "getGcLiveRoomModel$component_liveroom_release",
        "()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "layoutAdsView",
        "",
        "view",
        "layoutBottomActionView",
        "layoutEventView",
        "layoutLiveRoomPlayerView",
        "layoutTopInfoView",
        "requireLiveRoomDecorView",
        "requireView",
        "T",
        "id",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "Companion",
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
.field public static final Companion:Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final contentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->Companion:Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcLiveRoomModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->contentView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method

.method public static final create(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;Landroid/view/View;)Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;
    .locals 1
    .param p0    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->Companion:Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;->create(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;Landroid/view/View;)Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic requireView$default(Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$requireView$1;->INSTANCE:Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$requireView$1;

    :cond_0
    const-string p3, "block"

    .line 2
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->requireLiveRoomDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: requireView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getContentView$component_liveroom_release()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public final getGcLiveRoomModel$component_liveroom_release()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->gcLiveRoomModel:Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-object v0
.end method

.method public abstract layoutAdsView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract layoutBottomActionView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract layoutEventView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract layoutLiveRoomPlayerView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract layoutTopInfoView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final requireLiveRoomDecorView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public final requireView(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;->requireLiveRoomDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
