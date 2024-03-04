.class Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->f(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/MyPrizeBean;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;Lcom/guochao/faceshow/bean/MyPrizeBean;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->c:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->a:Lcom/guochao/faceshow/bean/MyPrizeBean;

    iput p3, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->a:Lcom/guochao/faceshow/bean/MyPrizeBean;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MyPrizeBean;->isUseAccessory:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->c:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    iget v0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->b:I

    iget-object v1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->a:Lcom/guochao/faceshow/bean/MyPrizeBean;

    iget-object v2, v1, Lcom/guochao/faceshow/bean/MyPrizeBean;->accessoryId:Ljava/lang/String;

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MyPrizeBean;->lotteryId:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->c:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    iget v0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->b:I

    iget-object v1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;->a:Lcom/guochao/faceshow/bean/MyPrizeBean;

    iget-object v2, v1, Lcom/guochao/faceshow/bean/MyPrizeBean;->accessoryId:Ljava/lang/String;

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MyPrizeBean;->lotteryId:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
