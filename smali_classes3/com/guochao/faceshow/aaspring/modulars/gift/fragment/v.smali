.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/v;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/v;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/v;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/v;->b:I

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->a(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;ILandroid/view/View;)V

    return-void
.end method
