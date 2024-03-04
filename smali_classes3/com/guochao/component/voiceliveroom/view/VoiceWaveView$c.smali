.class Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->a:J

    return-void
.end method

.method static synthetic a(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->a:J

    return-wide v0
.end method


# virtual methods
.method b()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->c()F

    move-result v0

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->g(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->g(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->i(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method c()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->a:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->g(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->i(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->g(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    return v1
.end method
