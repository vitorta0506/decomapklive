.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/d0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/d0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->T1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;Ljava/util/List;)V

    return-void
.end method
