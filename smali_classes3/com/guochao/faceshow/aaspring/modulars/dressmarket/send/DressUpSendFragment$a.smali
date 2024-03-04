.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const v0, 0x7f1202e6

    .line 2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f1202e5

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
