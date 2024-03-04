.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftImageLocation(Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$e;->a:Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$e;->a:Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animate(Lcom/guochao/faceshow/gift/view/GiftComboView;Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    return-void
.end method
