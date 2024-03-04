.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->c:I

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->c:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V

    return-void
.end method
