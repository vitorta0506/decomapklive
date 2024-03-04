.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

.field public final synthetic b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/c1;->a:Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/c1;->b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/c1;->a:Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/c1;->b:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    invoke-static {v0, v1, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->b(Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V

    return-void
.end method
