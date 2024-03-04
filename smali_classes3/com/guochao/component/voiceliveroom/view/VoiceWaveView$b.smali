.class Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;
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

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Runnable"

    const-string v1, "stopImmediately = sDelayed;"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->b(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->f(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;->a:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
