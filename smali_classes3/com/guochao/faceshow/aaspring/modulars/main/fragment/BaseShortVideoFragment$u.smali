.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$u;
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
        "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$u;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;)V
    .locals 3

    const v0, 0x7f0a0483

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 2
    iget-object v1, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    const v0, 0x7f0a0270

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->g(II)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->counts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->f(ILjava/lang/String;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0455

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->f(ILjava/lang/String;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->price:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a048a

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->f(ILjava/lang/String;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    const/16 p2, 0x8

    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->g(II)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$u;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;)V

    return-void
.end method
