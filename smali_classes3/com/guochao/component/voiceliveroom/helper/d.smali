.class public final synthetic Lcom/guochao/component/voiceliveroom/helper/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic b:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowManager$LayoutParams;Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/helper/d;->a:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/helper/d;->b:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/d;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/helper/d;->b:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;

    invoke-static {v0, v1, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->a(Landroid/view/WindowManager$LayoutParams;Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method
