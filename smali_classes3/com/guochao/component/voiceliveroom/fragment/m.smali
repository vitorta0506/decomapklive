.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/m;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/m;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;->P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V

    return-void
.end method