.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;",
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


# instance fields
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment$adapter$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment$adapter$2;->invoke$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V

    return-void
.end method

.method private static final invoke$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;

    move-result-object v0

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;->access$getPage$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->loadRoomList(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment$adapter$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;

    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v2

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/o;

    invoke-direct {v3, v1}, Lcom/guochao/component/voiceliveroom/fragment/o;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lx0/j;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment$adapter$2;->invoke()Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;

    move-result-object v0

    return-object v0
.end method
