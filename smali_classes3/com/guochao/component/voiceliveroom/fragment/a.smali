.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/a;->a:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/a;->a:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-static {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->P1(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method
