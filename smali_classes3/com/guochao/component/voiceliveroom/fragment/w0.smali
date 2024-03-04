.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/w0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/w0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    invoke-static {v0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
