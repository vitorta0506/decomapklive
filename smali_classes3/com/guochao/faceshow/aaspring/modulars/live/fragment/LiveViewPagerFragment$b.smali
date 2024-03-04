.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "live_voice_room_config"

    .line 1
    invoke-static {v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->D(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->D(I)V

    :goto_0
    return-void
.end method
