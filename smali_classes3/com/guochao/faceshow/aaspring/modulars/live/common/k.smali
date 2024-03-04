.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/common/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/k;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/k;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/widget/ImageView;)V

    return-void
.end method
