.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

.field private b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

.field private c:Lla/a;

.field complete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

.field doodleEditText:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Landroid/net/Uri;

.field flSeek:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/guochao/faceshow/aaspring/views/doodle/c;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lla/e;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field ivCompile:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivCut:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPainSize:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivRecall:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivText:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivTextRecall:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Ljava/lang/Runnable;

.field llMulti:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private m:Ljava/lang/Runnable;

.field mFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsPanel:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Landroid/view/animation/AlphaAnimation;

.field private q:Landroid/view/animation/AlphaAnimation;

.field private r:[I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field s:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

.field seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private t:F

.field private u:Lla/e;

.field private v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

.field viewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private w:Lla/b;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i:Ljava/util/Map;

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->o:Z

    const/16 v1, 0x9

    new-array v1, v1, [I

    const-string v2, "#FFFFFF"

    .line 5
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "#DF382C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    aput v0, v1, v2

    const-string v0, "#F19A36"

    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    aput v0, v1, v2

    const-string v0, "#83D753"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    aput v0, v1, v2

    const-string v0, "#3378F6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x5

    aput v0, v1, v2

    const-string v0, "#883C9B"

    .line 7
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    aput v0, v1, v2

    const-string v0, "#A25617"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x7

    aput v0, v1, v2

    const-string v0, "#EE858D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    aput v0, v1, v2

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->r:[I

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k:I

    return p0
.end method

.method static synthetic B0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lla/e;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->T0(Lla/e;)Z

    move-result p0

    return p0
.end method

.method static synthetic E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->t:F

    return p0
.end method

.method static synthetic F0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->t:F

    return p1
.end method

.method static synthetic G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->h:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    return-object p0
.end method

.method static synthetic H0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    return-object p0
.end method

.method static synthetic N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic P0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lcom/guochao/faceshow/aaspring/views/doodle/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->a1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V

    return-void
.end method

.method static synthetic Q0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->x:F

    return p0
.end method

.method static synthetic S0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->x:F

    return p1
.end method

.method private T0(Lla/e;)Z
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->ERASER:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private W0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->q:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private X0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private Y0(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p1, p1

    const/high16 v1, 0x40a00000    # 5.0f

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private a1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setEditMode(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCompile:Landroid/widget/ImageView;

    const v2, 0x7f080173

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->llMulti:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    const v2, 0x7f0f039e

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->f:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/g;->V0(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object v0

    new-instance v2, Ljc/a;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljc/a;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lcom/guochao/faceshow/aaspring/views/doodle/h;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lcom/guochao/faceshow/aaspring/views/doodle/h;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->Z0(Z)V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    return-object p0
.end method

.method private b1(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->p:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    const v1, 0x7f080174

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    const v1, 0x7f080175

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->flSeek:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->llMulti:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    return-object p0
.end method

.method public static d1(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_doodle_params"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->y:F

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->y:F

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->o:Z

    return p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->o:Z

    return p1
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->n:Z

    return p0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->n:Z

    return p1
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->Y0(F)V

    return-void
.end method

.method static synthetic q0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic r0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->W0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->j:I

    return p0
.end method

.method static synthetic u0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->j:I

    return p1
.end method

.method static synthetic v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    return-object p0
.end method

.method static synthetic y0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->r:[I

    return-object p0
.end method


# virtual methods
.method public Z0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCompile:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivText:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCut:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->complete:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setEnabled(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setRightFirstResEnable(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    const-string v1, "#66000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0044

    return v0
.end method

.method public initView()V
    .locals 7

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-string v0, ""

    .line 8
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f03a7

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_1

    .line 11
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$h;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const-string v2, "#66000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->setBottomEnable(Z)V

    const v0, 0x7f0801a7

    .line 14
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_doodle_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mImagePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->e:Ljava/lang/String;

    .line 20
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->f:Landroid/net/Uri;

    .line 21
    invoke-static {v0, p0}, Lma/b;->c(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    iget-boolean v5, v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mOptimizeDrawing:Z

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;

    invoke-direct {v6, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/guochao/faceshow/aaspring/views/doodle/j;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    .line 25
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/doodle/c;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/c;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Lcom/guochao/faceshow/aaspring/views/doodle/c$c;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->h:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    .line 26
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/i;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->h:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/i;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/views/doodle/m$a;)V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setDefaultTouchDetector(Lla/h;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsDrawableOutside:Z

    invoke-interface {v0, v1}, Lla/a;->setIsDrawableOutside(Z)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMinScale:F

    invoke-interface {v0, v1}, Lla/a;->setDoodleMinScale(F)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMaxScale:F

    invoke-interface {v0, v1}, Lla/a;->setDoodleMaxScale(F)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setOnRangeChangedListener(Lcom/guochao/faceshow/aaspring/views/k;)V

    .line 35
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->p:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v3, 0x96

    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 37
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->q:Landroid/view/animation/AlphaAnimation;

    .line 38
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 39
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->l:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public loadData()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->g:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->r:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;-><init>()V

    .line 7
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v4, 0x40400000    # 3.0f

    .line 8
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->r:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 11
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setDrawable(Landroid/graphics/drawable/GradientDrawable;)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 12
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->X0()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->hideSoftKeyboard()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000d

    const v2, 0x7f01004d

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->Z0(Z)V

    return-void

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->close()V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->Y1(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->Y1(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onKeyboardHeightChanged(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/e;->a(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;III)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->h:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->O()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->R()Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G(Lla/c;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->h:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p(Lla/f;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P()Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {p1}, Lla/a;->getAllItem()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {p1}, Lla/a;->getAllItem()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {v0}, Lla/a;->getAllItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lla/c;

    .line 12
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz v0, :cond_4

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->O()Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->R()Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G(Lla/c;)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P()Z

    .line 18
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getItemCount()I

    move-result p1

    if-lez p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    const v0, 0x7f080177

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    const v0, 0x7f080176

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 21
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->flSeek:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->llMulti:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->a1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V

    goto/16 :goto_3

    .line 27
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {p1}, Lla/a;->getAllItem()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {p1}, Lla/a;->getAllItem()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {v0}, Lla/a;->getAllItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lla/c;

    .line 29
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz v0, :cond_8

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->O()Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->R()Z

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G(Lla/c;)V

    goto :goto_1

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P()Z

    .line 35
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getItemCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    const v0, 0x7f080174

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 37
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    const v0, 0x7f080175

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 38
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setEditMode(Z)V

    goto :goto_3

    .line 39
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setEditMode(Z)V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCompile:Landroid/widget/ImageView;

    const v0, 0x7f080172

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->u:Lla/e;

    if-nez p1, :cond_b

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BRUSH:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-interface {p1, v0}, Lla/a;->setPen(Lla/e;)V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HAND_WRITE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-interface {p1, v0}, Lla/a;->setShape(Lla/g;)V

    .line 44
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    invoke-interface {p1, v0}, Lla/a;->setColor(Lla/b;)V

    goto :goto_2

    .line 45
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {v0, p1}, Lla/a;->setPen(Lla/e;)V

    .line 46
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->w:Lla/b;

    invoke-interface {p1, v0}, Lla/a;->setColor(Lla/b;)V

    .line 47
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->flSeek:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->llMulti:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 53
    :sswitch_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->c:Lla/a;

    invoke-interface {p1, v3}, Lla/a;->b(Z)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0239 -> :sswitch_5
        0x7f0a0599 -> :sswitch_4
        0x7f0a059b -> :sswitch_3
        0x7f0a05ce -> :sswitch_2
        0x7f0a05df -> :sswitch_1
        0x7f0a05e0 -> :sswitch_0
    .end sparse-switch
.end method
