.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;

.field public final synthetic b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/g1;->a:Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/g1;->b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/g1;->a:Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/g1;->b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->P1(Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Ljava/lang/Integer;)V

    return-void
.end method
