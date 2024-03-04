.class Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 4

    const v0, 0x7f0a064e

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    const v3, 0x7f0f0088

    invoke-static {v1, v0, v3, v2}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a0270

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->f(ILjava/lang/String;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p2

    const v0, 0x7f0a056a

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;-><init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method
