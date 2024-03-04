.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
