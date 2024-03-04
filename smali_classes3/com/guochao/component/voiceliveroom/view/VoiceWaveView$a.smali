.class Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->a(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->c(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->d(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->e(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
