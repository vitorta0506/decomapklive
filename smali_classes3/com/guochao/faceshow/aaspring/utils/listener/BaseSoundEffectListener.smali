.class public abstract Lcom/guochao/faceshow/aaspring/utils/listener/BaseSoundEffectListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doClick(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playDefaultButtonSound()I

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/listener/BaseSoundEffectListener;->doClick(Landroid/view/View;)V

    return-void
.end method
