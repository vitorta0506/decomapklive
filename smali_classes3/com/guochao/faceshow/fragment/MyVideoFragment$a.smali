.class Lcom/guochao/faceshow/fragment/MyVideoFragment$a;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/fragment/MyVideoFragment;->initView(Landroid/view/View;)V
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
.field final synthetic a:Lcom/guochao/faceshow/fragment/MyVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/MyVideoFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$a;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 3

    const v0, 0x7f0a064e

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoImg()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0f0088

    const/16 v2, 0x8

    invoke-static {v0, p2, v1, v2}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p2

    const v0, 0x7f0a056a

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/fragment/MyVideoFragment$a$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/fragment/MyVideoFragment$a$a;-><init>(Lcom/guochao/faceshow/fragment/MyVideoFragment$a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/fragment/MyVideoFragment$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method
