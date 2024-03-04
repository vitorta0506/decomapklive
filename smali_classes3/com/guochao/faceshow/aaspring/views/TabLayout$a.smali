.class Lcom/guochao/faceshow/aaspring/views/TabLayout$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/TabLayout;->G(Landroidx/viewpager2/widget/ViewPager2;Lcom/guochao/faceshow/aaspring/views/TabLayout$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/TabLayout;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/TabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$a;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$a;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    return-void
.end method
