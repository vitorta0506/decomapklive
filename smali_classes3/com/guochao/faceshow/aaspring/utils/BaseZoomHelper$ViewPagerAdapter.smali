.class public Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->createItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
