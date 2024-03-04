.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$b;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->O2(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/faceshow/mine/model/ContributionBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/ContributionBean;)V
    .locals 5

    const v0, 0x7f0a0201

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v1, 0x7f0a0c1e

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0c1f

    .line 3
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0c26

    .line 4
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getImg()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0f020e

    invoke-static {v0, v2, v4}, Lhc/a;->p(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$b$a;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$b;Lcom/guochao/faceshow/mine/model/ContributionBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getNick_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getTotalPrice()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/mine/model/ContributionBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$b;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/ContributionBean;)V

    return-void
.end method
