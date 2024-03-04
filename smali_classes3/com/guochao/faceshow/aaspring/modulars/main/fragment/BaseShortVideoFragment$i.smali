.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->P2(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->m0(Landroid/content/Context;I)V

    return-void
.end method
