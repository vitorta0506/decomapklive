.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$100(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->trackSend()V

    :cond_0
    return-void
.end method
