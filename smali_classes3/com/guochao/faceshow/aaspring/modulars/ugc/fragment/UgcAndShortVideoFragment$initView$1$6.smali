.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "onCheckedChanged",
        "",
        "group",
        "Landroid/widget/RadioGroup;",
        "checkedId",
        "",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1    # Landroid/widget/RadioGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getCurrent(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->S2(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->access$showVideoMenu(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Z)V

    return-void
.end method
