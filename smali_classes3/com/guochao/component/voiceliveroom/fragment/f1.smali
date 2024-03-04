.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/f1;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/f1;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;

    invoke-static {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;)V

    return-void
.end method
