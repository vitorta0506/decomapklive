.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->a:Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->c:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->a:Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->c:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;->d:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->a(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILandroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
