.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/common/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

.field public final synthetic b:Landroid/animation/AnimatorSet;

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/animation/AnimatorSet;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->b:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->b:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->b(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/animation/AnimatorSet;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/ImageView;)V

    return-void
.end method
