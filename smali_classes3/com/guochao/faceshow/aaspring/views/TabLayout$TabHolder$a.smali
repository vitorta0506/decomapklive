.class Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
