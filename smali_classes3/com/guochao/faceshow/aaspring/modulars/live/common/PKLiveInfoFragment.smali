.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$p;
    }
.end annotation


# static fields
.field public static final D:[I

.field public static final E:[I


# instance fields
.field private A:J

.field private B:J

.field C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

.field a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

.field addSVGA:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

.field c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

.field d:Z

.field e:Z

.field f:Z

.field g:I

.field private h:Z

.field private i:Z

.field ivAdd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleViewAdapter;

.field m:J

.field mAnimEndLeftView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAnimEndRightView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewCountryFlag:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLeftArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLeftCoinTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLlImageViewCountryFlag:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPKProgressView:Lcom/guochao/faceshow/aaspring/views/PKProgressView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRatioFrameLayout:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRightArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRightCoinTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSVGAImageViewVS:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCountDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewPunishTimeTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field marqueeView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:J

.field o:J

.field p:J

.field pkBroadcastName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field s:Lcom/guochao/faceshow/views/g;

.field private t:Landroid/os/Handler;

.field u:J

.field private v:Z

.field private w:I

.field private x:I

.field y:Landroid/view/animation/LinearInterpolator;

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->D:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->E:[I

    return-void

    :array_0
    .array-data 4
        0x7f0f0369
        0x7f0f0397
        0x7f0f0388
    .end array-data

    :array_1
    .array-data 4
        0x7f0f036a
        0x7f0f0398
        0x7f0f0389
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/guochao/faceshow/aaspring/views/AvatarView;

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    new-array v0, v0, [Lcom/guochao/faceshow/aaspring/views/AvatarView;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->e:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->q:Z

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->r:Z

    .line 9
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t:Landroid/os/Handler;

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->v:Z

    const/16 v0, 0x7d0

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->x:I

    .line 12
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->y:Landroid/view/animation/LinearInterpolator;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->z:Ljava/lang/Runnable;

    return-void
.end method

.method private B2(Ljava/util/List;[Lcom/guochao/faceshow/aaspring/views/AvatarView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;[",
            "Lcom/guochao/faceshow/aaspring/views/AvatarView;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_3

    .line 2
    :goto_1
    array-length p1, p2

    if-ge v3, p1, :cond_2

    .line 3
    aget-object p1, p2, v3

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->D:[I

    aget v0, v0, v3

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->b(Lp7/h;I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    .line 5
    aget-object v4, p2, v3

    if-eqz v4, :cond_5

    if-le v1, v3, :cond_4

    .line 6
    aget-object v5, p2, v3

    const v6, 0x7f0f008a

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->setDefaultAvatarRes(I)V

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    .line 8
    sget-object v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->E:[I

    aget v6, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->b(Lp7/h;I)V

    goto :goto_3

    .line 9
    :cond_4
    aget-object v5, p2, v3

    invoke-virtual {v5, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->setDefaultAvatarRes(I)V

    .line 10
    sget-object v5, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->D:[I

    aget v5, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->b(Lp7/h;I)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->j2()V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->k2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->p2(JZ)V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->v2()V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->e2()V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n2(I)V

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->h:Z

    return p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->w:I

    return p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->u2(IZZ)V

    return-void
.end method

.method private addFocus()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->LIVE:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/v;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-static {v0, v1, v2, v3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->x:I

    return p0
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroid/view/View;Lcom/opensource/svgaplayer/SVGAImageView;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->g2(Landroid/view/View;Lcom/opensource/svgaplayer/SVGAImageView;II)V

    return-void
.end method

.method private d2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user/attention/getIsAttention"

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getIsAttenion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private e2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tokens/live/pk/getPkVictoryOrDefeat"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private f2()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C2(JJ)V

    .line 4
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->g:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n2(I)V

    return-void
.end method

.method private g2(Landroid/view/View;Lcom/opensource/svgaplayer/SVGAImageView;II)V
    .locals 8

    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;II)V

    invoke-virtual {v0, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static h2(JJJZ)Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "server"

    .line 3
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "gameEnd"

    .line 4
    invoke-virtual {v1, p0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "punishEnd"

    .line 5
    invoke-virtual {v1, p0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "poll"

    .line 6
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private i2(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkPunishEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o:J

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkingEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v3

    .line 9
    iget-wide v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m:J

    sub-long/2addr v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->p:J

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->u:J

    .line 11
    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->p:J

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->q2(J)V

    .line 12
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    if-eqz v1, :cond_5

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->pkBroadcastName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLlImageViewCountryFlag:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mImageViewCountryFlag:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getCountryFlag()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0122

    invoke-static {v1, v2, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 18
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->d2()V

    :cond_5
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->q:Z

    .line 20
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLeftArea:Landroid/view/View;

    invoke-virtual {v0, v2, p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightArea:Landroid/view/View;

    invoke-virtual {v0, v2, p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_6

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n:J

    iget-wide v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->p:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    .line 24
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->i:Z

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkWinOrFail()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 29
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->g:I

    .line 30
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 31
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o2()V

    .line 32
    :catch_1
    :cond_7
    :goto_2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n:J

    iget-wide v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->p:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;JJ)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->s:Lcom/guochao/faceshow/views/g;

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->s:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const v5, 0x7f0a0639

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aput-object v5, v0, v4

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const v5, 0x7f0a063a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aput-object v5, v0, v1

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const v5, 0x7f0a063b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const/4 v6, 0x2

    aput-object v5, v0, v6

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const v5, 0x7f0a0995

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aput-object v5, v0, v4

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const v5, 0x7f0a0996

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aput-object v5, v0, v1

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    const v1, 0x7f0a0997

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aput-object p1, v0, v6

    :goto_3
    const/4 p1, 0x3

    if-ge v4, p1, :cond_8

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aget-object p1, p1, v4

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->setDefaultAvatarRes(I)V

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->setDefaultAvatarRes(I)V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aget-object p1, p1, v4

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->D:[I

    aget v1, v0, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->b(Lp7/h;I)V

    .line 44
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aget-object p1, p1, v4

    aget v0, v0, v4

    invoke-virtual {p1, v5, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->b(Lp7/h;I)V

    .line 45
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aget-object p1, p1, v4

    const v0, 0x3fbed61c

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->setAvatarRatio(F)V

    .line 46
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->setAvatarRatio(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 47
    :cond_8
    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C2(JJ)V

    return-void
.end method

.method private synthetic j2()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic k2(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->addSVGA:Landroid/view/View;

    check-cast v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v1, 0x7f11000a

    invoke-static {p1, v0, v1}, Lib/a;->a(Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/w;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/w;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    const-wide/16 v1, 0x1e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private n2(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->g:I

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->r:Z

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_4

    const v0, 0x7f120710

    const/4 v2, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndRightView:Landroid/view/View;

    invoke-virtual {p0, p1, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndLeftView:Landroid/view/View;

    invoke-virtual {p0, p1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndRightView:Landroid/view/View;

    invoke-virtual {p0, p1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndLeftView:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndRightView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndLeftView:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    const v0, 0x7f1206ff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 14
    :goto_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->j:Z

    .line 15
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->d:Z

    return-void
.end method

.method private o2()V
    .locals 3

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;

    invoke-direct {v1, p0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroidx/lifecycle/LifecycleOwner;)V

    const-string v2, "pk_vs.svga"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->getResource(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;)V

    return-void
.end method

.method private p2(JZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    .line 2
    div-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x5

    const v8, 0x3f638e39

    const/4 v9, 0x2

    if-gt v1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->v:Z

    if-nez p1, :cond_2

    const/4 v3, 0x0

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$k;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f8ccccd    # 1.1f

    move v2, v1

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->l(IILandroid/widget/TextView;Ld9/e$a;FF)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    mul-float p2, p2, v8

    const/high16 p3, 0x420c0000    # 35.0f

    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const/high16 p2, 0x42200000    # 40.0f

    invoke-virtual {p1, v9, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->v:Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p3, v9, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 13
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    invoke-static {p1, p2, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->timeToString(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    mul-float p2, p2, v8

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    :goto_0
    return-void
.end method

.method private q2(J)V
    .locals 0

    return-void
.end method

.method private u2(IZZ)V
    .locals 2

    if-eqz p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getIntroductionToPlay()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getIntroductionToPlay()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p3

    if-nez p3, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5
    :cond_2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->k:Ljava/util/List;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getIntroductionToPlay()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->w:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleViewAdapter;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    .line 10
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->m(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroid/view/View;Z)V

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t:Landroid/os/Handler;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$l;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void

    .line 12
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    const p2, 0x7f120715

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private v2()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->x2()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->e2()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Ld9/g;->u1(JI)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m:J

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 7
    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o:J

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->p:J

    sub-long/2addr v4, v2

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->p:J

    sub-long v4, v2, v4

    :goto_0
    move-wide v8, v4

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->j:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    const v2, 0x7f120710

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$d;

    const-wide/16 v10, 0x3e8

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;JJ)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->s:Lcom/guochao/faceshow/views/g;

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method private x2()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->h:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleViewAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A2(J)V
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->B:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C2(JJ)V

    return-void
.end method

.method public C2(JJ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->A:J

    .line 3
    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->B:J

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mPKProgressView:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->h(JJ)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLeftCoinTextView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightCoinTextView:Landroid/widget/TextView;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01c6

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mPKProgressView:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->k:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRatioFrameLayout:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    const v1, 0x3f638e39

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->setRatio(F)V

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->k:Ljava/util/List;

    invoke-direct {v0, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleViewAdapter;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getIntroductionToPlay()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getIntroductionToPlay()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-gtz v0, :cond_2

    .line 15
    invoke-direct {p0, v2, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->u2(IZZ)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 18
    invoke-direct {p0, v0, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->u2(IZZ)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    const v1, 0x7f120715

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :goto_2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    return-void

    .line 23
    :cond_5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->i2(Landroid/view/View;)V

    return-void
.end method

.method public l2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0642

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a099e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a050a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0642

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a099e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a050a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    .line 7
    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k2(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a063e

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a099a

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "server"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m:J

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "gameEnd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n:J

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "punishEnd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o:J

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "poll"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->f:Z

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->s:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLeftArea:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightArea:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->e(Landroid/view/View;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->e(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->r:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->g:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n2(I)V

    :cond_0
    return-void
.end method

.method public onViewClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->addFocus()V

    return-void
.end method

.method public r2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->getResult()I

    move-result v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->getFcoin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->getOtherFcoin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C2(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->d:Z

    .line 6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n2(I)V

    return-void
.end method

.method public richList(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0642

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a099e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;->T1(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;->T1(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    :cond_2
    :goto_0
    return-void
.end method

.method public s2()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->d:Z

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->n2(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTime(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "1"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V
    .locals 10

    const v0, 0x427d5555

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v1, :cond_1

    const/4 v3, 0x2

    if-eq p3, v3, :cond_0

    const/4 p3, 0x7

    const v0, 0x41caaaab

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 2
    sget-object v3, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$a;

    invoke-direct {v4, p0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroidx/lifecycle/LifecycleOwner;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string v5, "tie_29.svga"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->getResource(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;)V

    move v8, v0

    const/4 v9, 0x7

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 4
    sget-object p3, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$n;

    invoke-direct {v3, p0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroidx/lifecycle/LifecycleOwner;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string v4, "lose_29.svga"

    invoke-virtual {p3, v4, v3}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->getResource(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;)V

    move v8, v0

    const/4 v9, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 6
    sget-object p3, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$o;

    invoke-direct {v3, p0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroidx/lifecycle/LifecycleOwner;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string v4, "win_29.svga"

    invoke-virtual {p3, v4, v3}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->getResource(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;)V

    const/16 p3, 0xf

    move v8, v0

    const/16 v9, 0xf

    .line 7
    :goto_0
    invoke-virtual {p1, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 8
    invoke-virtual {p1, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterStop(Z)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;Lcom/opensource/svgaplayer/SVGAImageView;II)V

    invoke-virtual {p1, p3}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 11
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public w2()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->z:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public y2(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;J)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->q:Z

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    .line 3
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m:J

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->i2(Landroid/view/View;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p3

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 7
    :try_start_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkFcoin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    :cond_3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkFcoin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v0

    int-to-long v0, v1

    .line 9
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C2(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :goto_0
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    if-eqz p3, :cond_4

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->pkBroadcastName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLlImageViewCountryFlag:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mImageViewCountryFlag:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0122

    invoke-static {v0, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    .line 15
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkAudienceList()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->B2(Ljava/util/List;[Lcom/guochao/faceshow/aaspring/views/AvatarView;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 16
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkAudienceList()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b:[Lcom/guochao/faceshow/aaspring/views/AvatarView;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->B2(Ljava/util/List;[Lcom/guochao/faceshow/aaspring/views/AvatarView;)V

    .line 17
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkStage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "2"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkWinOrFail()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 21
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->g:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->e:Z

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->f2()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    return-void
.end method

.method public z2(J)V
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->A:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C2(JJ)V

    return-void
.end method
