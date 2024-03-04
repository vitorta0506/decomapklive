.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/h;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;

.field public final synthetic b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/m0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/m0;->b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/m0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/m0;->b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;->f(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
