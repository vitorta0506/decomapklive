.class Lcom/guochao/faceshow/aaspring/views/TabLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/TabLayout;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/TabLayout;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/TabLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->a(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->a:I

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->l(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->l(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$b;->a:I

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method
