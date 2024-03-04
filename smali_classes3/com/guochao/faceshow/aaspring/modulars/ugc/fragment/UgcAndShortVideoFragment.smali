.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;
.implements Lp7/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$UgcAndShortVideoPagerAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001+B\u0007\u00a2\u0006\u0004\u0008*\u0010)J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014J\u0006\u0010\u0014\u001a\u00020\u0008J\u0008\u0010\u0015\u001a\u00020\u0006H\u0016J\u001a\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0008H\u0016J\u0006\u0010\u001a\u001a\u00020\u0006J\u0006\u0010\u001b\u001a\u00020\u0006J\u0008\u0010\u001c\u001a\u00020\u0006H\u0016R\u0016\u0010\u001d\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010!\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001eR(\u0010\"\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\"\u0010#\u0012\u0004\u0008(\u0010)\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006,"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;",
        "Lp7/f;",
        "Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;",
        "it",
        "",
        "videoClick",
        "",
        "position",
        "setTitle",
        "",
        "show",
        "showVideoMenu",
        "showTitle",
        "Landroid/view/View;",
        "root",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "currentIndex",
        "onResume",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "appBarLayout",
        "verticalOffset",
        "onOffsetChanged",
        "goPublish",
        "ugcEvent",
        "reload",
        "titleShowing",
        "Z",
        "lastOffset",
        "I",
        "videoMenuShowing",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "<init>",
        "UgcAndShortVideoPagerAdapter",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private lastOffset:I

.field private titleShowing:Z

.field private videoMenuShowing:Z

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->titleShowing:Z

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->initView$lambda-4$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->initView$lambda-4$lambda-2(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->initView$lambda-4$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setTitle(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->setTitle(I)V

    return-void
.end method

.method public static final synthetic access$showVideoMenu(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showVideoMenu(Z)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-4$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->goPublish()V

    return-void
.end method

.method private static final initView$lambda-4$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->videoClick(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V

    return-void
.end method

.method private static final initView$lambda-4$lambda-2(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Landroid/view/View;)V
    .locals 0

    const-string p1, "$it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private final setTitle(I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    const v1, 0x7f0f015e

    const/4 v2, 0x4

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->showStatusBar(Landroid/app/Activity;Z)V

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v8, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_page:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v6}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showTitle(Z)V

    .line 5
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->indicator1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->indicator2:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->video:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->dynamic:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->video:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->dynamic:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->video:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 12
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->dynamic:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->endIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->sanjiao:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->sanjiao:Landroid/widget/ImageView;

    const v0, 0x7f0f018f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lz8/c;->J(ZZ)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->showStatusBar(Landroid/app/Activity;Z)V

    .line 18
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v8, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_page:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 19
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->video:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->dynamic:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 21
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->indicator1:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->indicator2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->video:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 24
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->dynamic:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 25
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->video:Landroid/widget/TextView;

    const-string v2, "#222222"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->dynamic:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    invoke-direct {p0, v7}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showVideoMenu(Z)V

    .line 28
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->videoMenuShowing:Z

    .line 29
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->endIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->sanjiao:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->lastOffset:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-direct {p0, v6}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showTitle(Z)V

    :goto_1
    return-void
.end method

.method private final showTitle(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->titleShowing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->titleShowing:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->title:Landroid/widget/LinearLayout;

    const-wide/16 v1, 0x96

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private final showVideoMenu(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->videoMenuShowing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->videoMenu:Landroid/widget/FrameLayout;

    const-string v1, "viewBinding.videoMenu"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->sanjiao:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/16 v3, 0x96

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->sanjiao:Landroid/widget/ImageView;

    const v1, 0x7f0f0190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->sanjiao:Landroid/widget/ImageView;

    const v1, 0x7f0f018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->videoMenuShowing:Z

    return-void
.end method

.method private final videoClick(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->videoMenuShowing:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showVideoMenu(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showTitle(Z)V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showVideoMenu(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final currentIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final goPublish()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;-><init>()V

    const v2, 0x1020002

    const/4 v3, 0x1

    const-string v4, "main_menu"

    .line 3
    invoke-static {v0, v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragmentAsDialog(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;ZLjava/lang/String;)V

    return-void
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->endIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/s;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewLL:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/t;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->dynamic:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/u;

    invoke-direct {v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/u;-><init>(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$UgcAndShortVideoPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$UgcAndShortVideoPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->title:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41600000    # 14.0f

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    add-int/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    .line 11
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    .line 12
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 13
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 14
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->title:Landroid/widget/LinearLayout;

    const-string v1, "it.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->videoMenu:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 19
    iget-object v3, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->videoMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    .line 20
    iget-object v4, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->videoMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    .line 21
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 22
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->access$showVideoMenu(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Z)V

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$lambda-4$$inlined$doOnLayout$1;

    invoke-direct {p1, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$lambda-4$$inlined$doOnLayout$1;-><init>(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 24
    :goto_0
    iget-object p1, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$5;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$5;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 25
    iget-object p1, p2, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->rg:Landroid/widget/RadioGroup;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$initView$1$6;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->lastOffset:I

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/high16 p2, 0x42200000    # 40.0f

    .line 3
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    const/4 v0, 0x1

    if-lt p1, p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showTitle(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showTitle(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->showTitle(Z)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz8/c;->J(ZZ)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getCurrent(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lp7/f;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lp7/f;

    invoke-interface {v0}, Lp7/f;->reload()V

    :cond_0
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    return-void
.end method

.method public final ugcEvent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getCurrent(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j2(I)V

    :cond_0
    return-void
.end method
