.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/k;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/k;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;

    invoke-static {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;->R1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;)V

    return-void
.end method
