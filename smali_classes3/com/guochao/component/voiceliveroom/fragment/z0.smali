.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/z0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/z0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    invoke-static {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->R1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
