.class Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/fragment/OpenVideoFragment;->initView(Landroid/view/View;)V
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
.field final synthetic a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/OpenVideoFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

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

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/guochao/faceshow/utils/Contants;->IMAGE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_0
    const v0, 0x7f0a0270

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->f(ILjava/lang/String;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p2

    const v0, 0x7f0a056a

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;-><init>(Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method
