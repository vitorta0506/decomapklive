.class public final Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final author:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final close:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentArea:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final count:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mask:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notExist:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final publish:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final publishIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final publishPicture:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final publishVideo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final realContent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabsSticky:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabsStickyArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topBackground:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topSpace:Landroid/widget/Space;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topicName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewPager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/Space;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->rootView:Landroid/view/View;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->author:Landroid/widget/TextView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->bottomDivider:Landroid/view/View;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->btnArea:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->close:Landroid/widget/ImageView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->content:Landroid/widget/FrameLayout;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->contentArea:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->count:Landroid/widget/TextView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->mask:Landroid/widget/ImageView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->notExist:Landroid/widget/LinearLayout;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->publish:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->publishIV:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->publishPicture:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->publishVideo:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->realContent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->tabsSticky:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->tabsStickyArea:Landroid/widget/FrameLayout;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->topBackground:Landroid/widget/ImageView;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->topSpace:Landroid/widget/Space;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->topicName:Landroid/widget/TextView;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->viewPager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;
    .locals 26
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v1, p0

    const v0, 0x7f0a00b8

    .line 1
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    const v0, 0x7f0a00e8

    .line 2
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a00fd

    .line 3
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0154

    .line 4
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v0, 0x7f0a017f

    .line 5
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a020d

    .line 6
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0255

    .line 7
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0259

    .line 8
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0269

    .line 9
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0741

    .line 10
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0823

    .line 11
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v0, 0x7f0a08d7

    .line 12
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a08d8

    .line 13
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v0, 0x7f0a08db

    .line 14
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v0, 0x7f0a08dc

    .line 15
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v0, 0x7f0a093e

    .line 16
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v17, :cond_0

    const v0, 0x7f0a0b26

    .line 17
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v18, :cond_0

    const v0, 0x7f0a0b27

    .line 18
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v19, :cond_0

    const v0, 0x7f0a0b28

    .line 19
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    if-eqz v20, :cond_0

    const v0, 0x7f0a0bcc

    .line 20
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    if-eqz v21, :cond_0

    const v0, 0x7f0a0bd5

    .line 21
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Space;

    if-eqz v22, :cond_0

    const v0, 0x7f0a0bd7

    .line 22
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    const v0, 0x7f0a0e05

    .line 23
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v24, :cond_0

    .line 24
    new-instance v25, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v24}, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;-><init>(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V

    return-object v25

    .line 25
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0d00b9

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityTopicHomeBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
