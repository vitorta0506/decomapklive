.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$c;
.super Lbutterknife/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$c;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$c;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {p0}, Lbutterknife/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$c;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->onViewClicked()V

    return-void
.end method
