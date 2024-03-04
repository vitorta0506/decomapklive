.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/a;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/a;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroid/view/View;)V

    return-void
.end method
