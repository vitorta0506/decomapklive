.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/b;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/b;->b:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/b;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/b;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/b;->b:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/b;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->a(Landroid/widget/ImageView;Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    return-void
.end method
